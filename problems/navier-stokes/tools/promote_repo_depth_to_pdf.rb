#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "open3"
require "pathname"
require "rbconfig"
require "time"
require "yaml"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
NS_ROOT = ROOT.join("problems/navier-stokes")
BUNDLE_ROOT = NS_ROOT.join("submission-bundle")
RUN_LEDGER = BUNDLE_ROOT.join("pdf-depth-promotion-run.yaml")
PROBLEM_ID = "navier-stokes"

MAIN_TEX = BUNDLE_ROOT.join("navier-stokes-submission.tex")
CURRENT_MATERIAL = BUNDLE_ROOT.join("current-material-coverage.yaml")
SURFACE_APPENDIX = BUNDLE_ROOT.join("surface-derivation-appendix.tex")
SURFACE_INVENTORY = BUNDLE_ROOT.join("surface-derivation-inventory.yaml")
SOURCE_FIELD_APPENDIX = BUNDLE_ROOT.join("source-field-reader-appendix.tex")
EXPORT_STATUS = BUNDLE_ROOT.join("submission-export-status.yaml")
AUTHORITATIVE_PDF = ROOT.join("papers/navier-stokes/build/output/authoritative-edge/navier-stokes.pdf")
HUMAN_SUBMISSION_PDF = BUNDLE_ROOT.join("navier-stokes-human-submission.pdf")

MIN_SOURCE_FIELD_WORDS = 300_000
MIN_SURFACE_DERIVATION_ROWS = 3_000
MIN_AUTHORITATIVE_PAGES = 1_000

REQUIRED_TEX_INPUTS = %w[
  proof-attempt-failure-appendix.tex
  source-field-reader-appendix.tex
  surface-derivation-appendix.tex
].freeze

REQUIRED_PDF_TEXT = {
  "proof-attempt failure history" => /Proof Attempts And Failures To Prove Smoothness/i,
  "source-field reader appendix" => /Source-Field Reader Appendix/i,
  "source-field closure" => /The source field is long because the proof program is long/i,
  "surface derivation branch obligations" => /Expanded Branch-Family Obligations/i,
  "CM face language" => /Pack, Part, and Field/i
}.freeze

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
end

def load_yaml(path)
  return {} unless path.file?

  YAML.load_file(path.to_s) || {}
end

def write_yaml(path, payload)
  path.write(YAML.dump(payload).lines.map { |line| "#{line.rstrip}\n" }.join)
end

def file_sha256(path)
  return nil unless path.file?

  Digest::SHA256.file(path.to_s).hexdigest
end

def word_count(text)
  text.scan(/[A-Za-z0-9]+(?:[-'][A-Za-z0-9]+)*/).length
end

def tail(text, max_lines: 18)
  text.to_s.lines.last(max_lines).join.strip
end

def command_entry(label, argv, stdout, stderr, status)
  {
    "label" => label,
    "argv" => argv,
    "success" => status.success?,
    "exitstatus" => status.exitstatus,
    "stdout_tail" => tail(stdout),
    "stderr_tail" => tail(stderr)
  }
end

def run_command!(commands, label, *argv)
  stdout, stderr, status = Open3.capture3(*argv, chdir: ROOT.to_s)
  entry = command_entry(label, argv, stdout, stderr, status)
  commands << entry
  raise "#{label} failed: #{stderr.strip.empty? ? stdout.strip : stderr.strip}" unless status.success?

  entry
end

def pdf_page_count(path)
  stdout, stderr, status = Open3.capture3("pdfinfo", path.to_s)
  raise "pdfinfo failed for #{relative(path)}: #{stderr.strip}" unless status.success?

  stdout[/^Pages:\s+(\d+)/, 1].to_i
end

def pdf_text(path)
  stdout, stderr, status = Open3.capture3("pdftotext", path.to_s, "-")
  raise "pdftotext failed for #{relative(path)}: #{stderr.strip}" unless status.success?

  stdout
end

def export_authoritative_pdf
  require_relative "../../../system/runner/lib/paper_factory_workspace"
  require_relative "../../../system/runner/lib/submission_bundle_exporter"

  workspace = PaperFactoryRuntime::Workspace.new(ROOT)
  problem = workspace.problem(PROBLEM_ID)
  state = YAML.safe_load(YAML.dump(workspace.state_for(problem)), permitted_classes: [Time], aliases: true)
  PaperFactoryRuntime::SubmissionBundleExporter.new(workspace, problem, state).export(now: Time.now.utc)
end

def current_material_gate
  coverage = load_yaml(CURRENT_MATERIAL)
  verification = coverage.fetch("verification", {})
  gap = coverage.fetch("coverage_gap_after_existing_surfaces", {})
  errors = []
  errors << "current-material coverage missing" if coverage.empty?
  errors << "unclassified current checkable files remain" unless Array(verification["unclassified_current_checkable_files"]).empty?
  errors << "stale family entries remain" unless Array(verification["stale_family_entries"]).empty?
  errors << "coverage gap does not match family sum" unless verification["coverage_gap_count_matches_family_sum"] == true
  errors << "no coverage families recorded" unless Array(gap["families"]).any?

  {
    "gate_id" => "current-material-coverage-complete",
    "status" => errors.empty? ? "passed" : "failed",
    "checked_text_files_outside_existing_union" => gap["checked_text_files_outside_existing_union"],
    "family_count_sum" => verification["family_count_sum"],
    "errors" => errors
  }
end

def appendix_gate
  errors = []
  source_text = SOURCE_FIELD_APPENDIX.file? ? SOURCE_FIELD_APPENDIX.read : ""
  source_words = word_count(source_text)
  surface_inventory = load_yaml(SURFACE_INVENTORY)
  surface_rows = surface_inventory.dig("summary", "mathematical_appendix_expansion_rows").to_i
  main_text = MAIN_TEX.file? ? MAIN_TEX.read : ""

  errors << "source-field reader appendix missing" unless SOURCE_FIELD_APPENDIX.file?
  errors << "source-field reader appendix has #{source_words} words; minimum is #{MIN_SOURCE_FIELD_WORDS}" if source_words < MIN_SOURCE_FIELD_WORDS
  errors << "surface derivation appendix missing" unless SURFACE_APPENDIX.file?
  errors << "surface derivation inventory has #{surface_rows} expansion rows; minimum is #{MIN_SURFACE_DERIVATION_ROWS}" if surface_rows < MIN_SURFACE_DERIVATION_ROWS
  REQUIRED_TEX_INPUTS.each do |input|
    errors << "main TeX does not input #{input}" unless main_text.include?(input)
  end

  {
    "gate_id" => "source-depth-appendices-materialized-in-tex",
    "status" => errors.empty? ? "passed" : "failed",
    "source_field_word_count" => source_words,
    "surface_derivation_expansion_rows" => surface_rows,
    "main_tex" => relative(MAIN_TEX),
    "errors" => errors
  }
end

def dual_pdf_track_gate
  errors = []
  papers_pages = 0
  human_pages = 0
  export_status = load_yaml(EXPORT_STATUS)
  expected_tracks = {
    "human_app_aligned" => relative(HUMAN_SUBMISSION_PDF),
    "codex_machine_paper" => relative(AUTHORITATIVE_PDF)
  }

  unless AUTHORITATIVE_PDF.file? && AUTHORITATIVE_PDF.size.positive?
    errors << "papers/Codex PDF missing"
  else
    papers_pages = pdf_page_count(AUTHORITATIVE_PDF)
    errors << "papers/Codex PDF has #{papers_pages} pages; minimum is #{MIN_AUTHORITATIVE_PAGES}" if papers_pages < MIN_AUTHORITATIVE_PAGES
    text = pdf_text(AUTHORITATIVE_PDF)
    REQUIRED_PDF_TEXT.each do |label, pattern|
      errors << "papers/Codex PDF missing rendered #{label}" unless text.match?(pattern)
    end
    if text.match?(%r{problems/navier-stokes|submission-bundle|source-forensics|theorem-construction|system/runner})
      errors << "papers/Codex PDF exposes internal source path strings"
    end
  end

  unless HUMAN_SUBMISSION_PDF.file? && HUMAN_SUBMISSION_PDF.size.positive?
    errors << "human/app-aligned PDF missing: #{relative(HUMAN_SUBMISSION_PDF)}"
  else
    human_pages = pdf_page_count(HUMAN_SUBMISSION_PDF)
    errors << "human/app-aligned PDF has #{human_pages} pages; minimum is #{MIN_AUTHORITATIVE_PAGES}" if human_pages < MIN_AUTHORITATIVE_PAGES
  end

  tracks = export_status["pdf_tracks"].is_a?(Hash) ? export_status["pdf_tracks"] : {}
  expected_tracks.each do |track_id, expected_path|
    actual_path = tracks.dig(track_id, "path").to_s
    errors << "submission export status #{track_id} track points to #{actual_path.empty? ? '(none)' : actual_path}, expected #{expected_path}" unless actual_path == expected_path
  end

  preferred_pdf = export_status["preferred_pdf"].to_s
  errors << "submission export status preferred_pdf points to #{preferred_pdf.empty? ? '(none)' : preferred_pdf}, expected #{relative(HUMAN_SUBMISSION_PDF)}" unless preferred_pdf == relative(HUMAN_SUBMISSION_PDF)
  actual_pdf = export_status["pdf"].to_s
  errors << "submission export status pdf points to #{actual_pdf}, but it must be one of the two required PDF tracks" unless actual_pdf.empty? || expected_tracks.value?(actual_pdf)

  if export_status["submission_ready"] == true
    errors << "submission export status claims submission_ready=true while proof/PDF gates are still being checked"
  end

  problem_pdfs = Dir.glob(ROOT.join("problems/navier-stokes/**/*.pdf").to_s).sort
  allowed_problem_pdfs = [HUMAN_SUBMISSION_PDF.expand_path.to_s]
  unexpected_problem_pdfs = problem_pdfs.reject { |path| allowed_problem_pdfs.include?(Pathname.new(path).expand_path.to_s) }
  unless unexpected_problem_pdfs.empty?
    errors << "unexpected problem-local PDF outputs remain: #{unexpected_problem_pdfs.map { |path| relative(path) }.join(', ')}"
  end

  {
    "gate_id" => "dual-pdf-track-rendered-depth-readback",
    "status" => errors.empty? ? "passed" : "failed",
    "preferred_pdf" => relative(HUMAN_SUBMISSION_PDF),
    "pdf_tracks" => expected_tracks,
    "papers_pdf_pages" => papers_pages,
    "human_pdf_pages" => human_pages,
    "sha256" => file_sha256(AUTHORITATIVE_PDF),
    "errors" => errors
  }
end

def build_result(commands, export_result, gates, started_at, status)
  {
    "version" => 1,
    "problem_id" => PROBLEM_ID,
    "generated_at" => Time.now.utc.iso8601,
    "started_at" => started_at.iso8601,
    "status" => status,
    "purpose" => "Regenerate the Navier-Stokes repo-depth coverage surfaces, promote them into the submission TeX/PDF path, and fail unless both required PDF tracks visibly carry the proof-depth anchors.",
    "authority" => {
      "source_manifest" => relative(NS_ROOT.join("paper-export-inputs.yaml")),
      "current_material_coverage" => relative(CURRENT_MATERIAL),
      "surface_derivation_inventory" => relative(SURFACE_INVENTORY),
      "main_tex" => relative(MAIN_TEX),
      "preferred_pdf" => relative(HUMAN_SUBMISSION_PDF),
      "codex_machine_pdf" => relative(AUTHORITATIVE_PDF)
    },
    "commands" => commands,
    "export_result" => export_result,
    "gates" => gates
  }
end

def verify_only?
  ARGV.include?("--check")
end

started_at = Time.now.utc
commands = []
export_result = nil
gates = []
status = "failed"

begin
  if verify_only?
    run_command!(commands, "current material coverage check", RbConfig.ruby, "problems/navier-stokes/tools/build_current_material_coverage.rb", "--check")
    run_command!(commands, "surface derivation appendix check", RbConfig.ruby, "problems/navier-stokes/tools/build_surface_derivation_appendix.rb", "--check")
  else
    run_command!(commands, "current material coverage rebuild", RbConfig.ruby, "problems/navier-stokes/tools/build_current_material_coverage.rb")
    run_command!(commands, "surface derivation appendix rebuild", RbConfig.ruby, "problems/navier-stokes/tools/build_surface_derivation_appendix.rb")
    run_command!(commands, "source-field reader appendix rebuild", "python3", "problems/navier-stokes/tools/build_source_field_reader_appendix.py")
    export_result = export_authoritative_pdf
  end

  run_command!(commands, "PDF argument hygiene", RbConfig.ruby, "problems/navier-stokes/tools/check_pdf_argument_hygiene.rb")
  run_command!(commands, "PDF output topology", RbConfig.ruby, "problems/navier-stokes/tools/check_pdf_output_topology.rb")
  run_command!(commands, "one MPP PDF output per problem", RbConfig.ruby, "system/runner/bin/check_mpp_pdf_outputs.rb")

  gates = [
    current_material_gate,
    appendix_gate,
    dual_pdf_track_gate
  ]
  status = gates.all? { |gate| gate.fetch("status") == "passed" } ? "passed" : "failed"
rescue StandardError => e
  gates << {
    "gate_id" => "runner-exception",
    "status" => "failed",
    "errors" => [e.message]
  }
ensure
  result = build_result(commands, export_result, gates, started_at, status)
  write_yaml(RUN_LEDGER, result)
end

if status == "passed"
  puts "PDF_DEPTH_PROMOTION OK: #{relative(HUMAN_SUBMISSION_PDF)} and #{relative(AUTHORITATIVE_PDF)}"
  exit 0
end

warn "PDF_DEPTH_PROMOTION FAILED: #{relative(RUN_LEDGER)}"
warn gates.flat_map { |gate| Array(gate["errors"]) }.reject(&:empty?).join("\n")
exit 1
