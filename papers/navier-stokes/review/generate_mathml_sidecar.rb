#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "fileutils"
require "json"
require "open3"
require "tempfile"
require "tmpdir"

REPOSITORY_ROOT = File.expand_path("../../..", __dir__)
GENERATED_DIRECTORY = File.join(REPOSITORY_ROOT, "papers/navier-stokes/manuscript/generated")
OUTPUT_RELATIVE_PATH = "papers/navier-stokes/manuscript/generated/main-luamml-mathml.html"
OUTPUT_PATH = File.join(REPOSITORY_ROOT, OUTPUT_RELATIVE_PATH)

SOURCE_FILES = [
  "main.tex",
  "00-how-proof-works.tex",
  "00-introduction.tex",
  "00-analytic-framework.tex",
  "01-setting-mixed-jet.tex",
  "02-compatible-rectangles.tex",
  "04-intersection-endpoint-restart.tex",
  "03-matrix-forms.tex",
  "03-quantitative-consequences.tex",
  "05-three-dimensional-applications.tex",
  "06-conclusion.tex"
].freeze

BUILD_ENVIRONMENT = {
  "SOURCE_DATE_EPOCH" => "1787443200",
  "FORCE_SOURCE_DATE" => "1",
  "TZ" => "UTC",
  "LC_ALL" => "C"
}.freeze

# LuaMML currently aborts while closing gathered and loses substack captions.
# Keep manuscript tokens intact for formula hashes; adapt isolated MathML builds.
DRIVER = <<~'TEX'.b.freeze
  \def\NSMathMLSidecarBuild{1}
  \long\def\NSMathMLSubstack#1{\begin{smallmatrix}#1\end{smallmatrix}}
  \AddToHook{begindocument/end}{%
    \let\gathered\aligned
    \let\endgathered\endaligned
    \let\substack\NSMathMLSubstack
  }
  \input{source-main.tex}
TEX
SIDECAR_NAME = "main-luamml-mathml.html"
LOG_NAME = "main.log"
LATEXMK_COMMAND = [
  "latexmk",
  "-lualatex",
  "-interaction=nonstopmode",
  "-halt-on-error",
  "-file-line-error",
  "main.tex"
].freeze

LOG_COUNT_PATTERNS = {
  "found" => /==>\s*(\d+)\s+math\s+fragments\s+found/i,
  "fitting" => /==>\s*(\d+)\s+fitting\s+MathML\s+AF\s+found/i,
  "attached" => /==>\s*(\d+)\s+MathML\s+AF\s+attached/i
}.freeze
GENERATED_FRAGMENT_PATTERN = /==>\s*(\d+)\s+MathML\s+fragments\s+read/i

FORBIDDEN_LOG_DIAGNOSTICS = {
  "assertion" => [
    /\bassertion(?:\s+(?:failed|error|failure)\b|:)/i,
    /\bin\s+function\s+['\"]assert['\"]/i
  ],
  "fatal" => [
    /\bfatal\s+error(?:\s+occurred)?\b/i,
    /\bemergency\s+stop\b/i
  ],
  "missing MathML" => [
    /\bWARNING:\s*mathml\s+missing\s+for\s+hash\b/i,
    /\bluamml\s+will\s+not\s+create\s+an?\s+MathML\s+file\b/i
  ]
}.freeze

REPRESENTATIVE_UNICODE = ["ℝ", "∫", "Δ", "∇"].freeze
ILLEGAL_CONTROL_BYTES = ((0x00..0x08).to_a + [0x0b, 0x0c] + (0x0e..0x1f).to_a + [0x7f]).freeze

def fail!(message)
  raise RuntimeError, message
end

def source_snapshot
  SOURCE_FILES.each_with_object({}) do |name, snapshot|
    path = File.join(GENERATED_DIRECTORY, name)
    fail!("authoritative source is not a regular file: #{path}") unless File.file?(path)

    snapshot[name] = File.binread(path)
  end
end

def source_hashes(snapshot)
  snapshot.each_with_object({}) do |(name, bytes), hashes|
    hashes[name] = Digest::SHA256.hexdigest(bytes)
  end
end

def source_tree_hash(snapshot)
  digest = Digest::SHA256.new
  SOURCE_FILES.each do |name|
    bytes = snapshot.fetch(name)
    digest.update([name.bytesize].pack("Q>"))
    digest.update(name)
    digest.update([bytes.bytesize].pack("Q>"))
    digest.update(bytes)
  end
  digest.hexdigest
end

def stage_sources(directory, snapshot)
  snapshot.each do |name, bytes|
    staged_name = name == "main.tex" ? "source-main.tex" : name
    File.binwrite(File.join(directory, staged_name), bytes)
  end
  File.binwrite(File.join(directory, "main.tex"), DRIVER)
end

def reject_log_diagnostics!(log, build_number)
  FORBIDDEN_LOG_DIAGNOSTICS.each do |label, patterns|
    next unless patterns.any? { |pattern| log.match?(pattern) }

    fail!("build #{build_number} final log contains #{label} diagnostic")
  end
end

def parse_log_counts(log, build_number)
  counts = LOG_COUNT_PATTERNS.each_with_object({}) do |(label, pattern), parsed|
    matches = log.scan(pattern)
    fail!("build #{build_number} final log has no #{label} MathML count") if matches.empty?

    parsed[label] = matches.last.first.to_i
  end

  fail!("build #{build_number} MathML counts are not positive: #{counts}") unless counts.values.all?(&:positive?)
  fail!("build #{build_number} MathML counts differ: #{counts}") unless counts.values.uniq.one?

  counts
end

def parse_generated_fragment_count(log, build_number)
  matches = log.scan(GENERATED_FRAGMENT_PATTERN)
  fail!("build #{build_number} final log has no generated MathML fragment count") if matches.empty?

  count = matches.last.first.to_i
  fail!("build #{build_number} generated MathML fragment count is not positive") unless count.positive?

  count
end

def validate_sidecar!(bytes, generated_fragments, build_number)
  text = bytes.dup.force_encoding(Encoding::UTF_8)
  fail!("build #{build_number} sidecar is not valid UTF-8") unless text.valid_encoding?

  illegal = bytes.bytes.find { |byte| ILLEGAL_CONTROL_BYTES.include?(byte) }
  fail!(format("build %d sidecar contains illegal control byte 0x%02X", build_number, illegal)) if illegal

  missing = REPRESENTATIVE_UNICODE.reject { |character| text.include?(character) }
  fail!("build #{build_number} sidecar lacks representative Unicode: #{missing.join(' ')}") unless missing.empty?

  fragments = text.scan(/^<math(?:\s|>)/i).length
  fail!("build #{build_number} sidecar contains no top-level <math fragments") unless fragments.positive?
  unless fragments == generated_fragments
    fail!("build #{build_number} sidecar has #{fragments} top-level <math fragments but log reports #{generated_fragments} generated fragments")
  end

  fragments
end

def generate_build(snapshot, build_number)
  Dir.mktmpdir("navier-stokes-mathml-#{build_number}-") do |directory|
    stage_sources(directory, snapshot)
    stdout, stderr, status = Open3.capture3(BUILD_ENVIRONMENT, *LATEXMK_COMMAND, chdir: directory)
    unless status.success?
      detail = [stdout, stderr].join("\n").lines.last(20).join.strip
      fail!("build #{build_number} latexmk failed with status #{status.exitstatus}: #{detail}")
    end

    log_path = File.join(directory, LOG_NAME)
    sidecar_path = File.join(directory, SIDECAR_NAME)
    fail!("build #{build_number} did not produce #{LOG_NAME}") unless File.file?(log_path)
    fail!("build #{build_number} did not produce #{SIDECAR_NAME}") unless File.file?(sidecar_path)

    log = File.binread(log_path).force_encoding(Encoding::UTF_8)
    fail!("build #{build_number} final log is not valid UTF-8") unless log.valid_encoding?
    reject_log_diagnostics!(log, build_number)
    counts = parse_log_counts(log, build_number)
    generated_fragments = parse_generated_fragment_count(log, build_number)
    unless generated_fragments >= counts.fetch("found")
      fail!("build #{build_number} reads fewer generated fragments than it finds document formulas")
    end
    bytes = File.binread(sidecar_path)
    fragments = validate_sidecar!(bytes, generated_fragments, build_number)

    {
      "bytes" => bytes,
      "counts" => counts,
      "generated_fragments" => generated_fragments,
      "fragments" => fragments
    }
  end
end

def publish_atomically(bytes)
  FileUtils.mkdir_p(File.dirname(OUTPUT_PATH))
  temporary = Tempfile.new([".main-luamml-mathml-", ".tmp"], File.dirname(OUTPUT_PATH))
  begin
    temporary.binmode
    temporary.write(bytes)
    temporary.flush
    temporary.fsync
    temporary.chmod(0o644)
    temporary.close
    File.rename(temporary.path, OUTPUT_PATH)
  ensure
    temporary.close unless temporary.closed?
    temporary.unlink if File.exist?(temporary.path)
  end
end

def main
  snapshot = source_snapshot
  hashes = source_hashes(snapshot)
  builds = [generate_build(snapshot, 1), generate_build(snapshot, 2)]

  fail!("independent MathML sidecar builds differ byte-for-byte") unless builds[0]["bytes"] == builds[1]["bytes"]
  fail!("independent MathML sidecar log counts differ") unless builds[0]["counts"] == builds[1]["counts"]
  unless builds[0]["generated_fragments"] == builds[1]["generated_fragments"]
    fail!("independent MathML generated-fragment counts differ")
  end
  fail!("authoritative sources changed during generation") unless source_hashes(source_snapshot) == hashes

  sidecar = builds[0]["bytes"]
  publish_atomically(sidecar)

  provenance = {
    "artifact" => OUTPUT_RELATIVE_PATH,
    "sha256" => Digest::SHA256.hexdigest(sidecar),
    "bytes" => sidecar.bytesize,
    "math_fragments" => builds[0]["fragments"],
    "fragments_read" => builds[0]["generated_fragments"],
    "log_counts" => builds[0]["counts"],
    "reproducible_builds" => 2,
    "source_tree_sha256" => source_tree_hash(snapshot),
    "source_sha256" => hashes,
    "driver_sha256" => Digest::SHA256.hexdigest(DRIVER),
    "environment" => BUILD_ENVIRONMENT
  }
  puts JSON.generate(provenance)
end

begin
  main
rescue StandardError => error
  warn JSON.generate("error" => error.message)
  exit 1
end
