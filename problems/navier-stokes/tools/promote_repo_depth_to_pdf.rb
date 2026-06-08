#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "fileutils"
require "open3"
require "pathname"
require "rbconfig"
require "time"
require "yaml"

require_relative "../../../system/runner/lib/navier_stokes_completion_readiness_support"
require_relative "../../../system/runner/lib/nightly_ns_completion_engine"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
NS_ROOT = ROOT.join("problems/navier-stokes")
BUNDLE_ROOT = NS_ROOT.join("submission-bundle")
RUN_LEDGER = BUNDLE_ROOT.join("pdf-depth-promotion-run.yaml")
CHECK_LEDGER = BUNDLE_ROOT.join("pdf-depth-promotion-check.yaml")
PROBLEM_ID = "navier-stokes"

MAIN_TEX = BUNDLE_ROOT.join("navier-stokes-submission.tex")
CURRENT_MATERIAL = BUNDLE_ROOT.join("current-material-coverage.yaml")
SURFACE_APPENDIX = BUNDLE_ROOT.join("surface-derivation-appendix.tex")
SURFACE_INVENTORY = BUNDLE_ROOT.join("surface-derivation-inventory.yaml")
SOURCE_FIELD_APPENDIX = BUNDLE_ROOT.join("source-field-reader-appendix.tex")
EXPORT_STATUS = BUNDLE_ROOT.join("submission-export-status.yaml")
CODEX_MAIN_TEX = ROOT.join("papers/navier-stokes/manuscript/generated/main.tex")
CODEX_PAPER_PDF = ROOT.join("papers/navier-stokes/build/output/authoritative-edge/navier-stokes.pdf")
CODEX_PAPER_TEX = ROOT.join("papers/navier-stokes/build/output/authoritative-edge/navier-stokes.tex")
HUMAN_SUBMISSION_PDF = BUNDLE_ROOT.join("navier-stokes-human-submission.pdf")

MIN_SOURCE_FIELD_WORDS = 300_000
MIN_SURFACE_DERIVATION_ROWS = 3_000
MIN_HUMAN_APP_ALIGNED_PAGES = 1_000
MIN_CODEX_SUBMISSION_PAGES = 20
MAX_CODEX_SUBMISSION_PAGES = 120

REQUIRED_TEX_INPUTS = %w[
  proof-attempt-failure-appendix.tex
  source-field-reader-appendix.tex
  surface-derivation-appendix.tex
].freeze

REQUIRED_CODEX_PDF_TEXT = {
  "same-solution contrapositive title" => /Same-Solution Contrapositive/i,
  "whole-space CM completion" => /Whole-Space CM Completion/i,
  "Clay smoothness conclusion" => /Clay Smoothness Conclusion/i,
  "reader check" => /Reader Check/i,
  "CM face language" => /Pack, Part, and Field/i
}.freeze

FORBIDDEN_CODEX_DOSSIER_TEXT = {
  "proof-attempt dossier appendix" => /Proof Attempts And Failures To Prove Smoothness/i,
  "source-field reader appendix" => /Source-Field Reader Appendix/i,
  "surface derivation appendix" => /Expanded Branch-Family Obligations/i,
  "dossier-scale source-field closure" => /The source field is long because the proof program is long/i
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

def file_sha1(path)
  return nil unless path.file?

  Digest::SHA1.file(path.to_s).hexdigest
end

def pdf_track_payload(path, role, extra = {})
  {
    "path" => relative(path),
    "role" => role,
    "present" => path.file?,
    "bytes" => path.file? ? path.size : 0,
    "sha1" => file_sha1(path),
    "required_for_clay_submission" => true
  }.merge(extra)
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

def export_codex_paper_pdf
  raise "missing Codex paper source #{relative(CODEX_MAIN_TEX)}" unless CODEX_MAIN_TEX.file?

  FileUtils.mkdir_p(CODEX_PAPER_PDF.dirname)
  output_dir = CODEX_PAPER_PDF.dirname.relative_path_from(CODEX_MAIN_TEX.dirname).to_s
  argv = [
    "pdflatex",
    "-interaction=nonstopmode",
    "-halt-on-error",
    "-jobname=navier-stokes",
    "-output-directory=#{output_dir}",
    CODEX_MAIN_TEX.basename.to_s
  ]
  stdout_chunks = []
  stderr_chunks = []
  status = nil
  2.times do
    stdout, stderr, status = Open3.capture3(*argv, chdir: CODEX_MAIN_TEX.dirname.to_s)
    stdout_chunks << stdout
    stderr_chunks << stderr
    raise "Codex paper PDF compile failed: #{stderr.strip.empty? ? stdout.lines.last(40).join.strip : stderr.strip}" unless status.success?
  end

  FileUtils.cp(CODEX_MAIN_TEX, CODEX_PAPER_TEX)
  {
    "action" => "codex-paper-pdf-export",
    "problem_id" => PROBLEM_ID,
    "status" => CODEX_PAPER_PDF.file? && CODEX_PAPER_PDF.size.positive? ? "exported" : "failed",
    "render_quality" => "typeset",
    "source" => relative(CODEX_MAIN_TEX),
    "pdf" => relative(CODEX_PAPER_PDF),
    "tex" => relative(CODEX_PAPER_TEX),
    "compiler" => "pdflatex",
    "stdout_tail" => tail(stdout_chunks.join("\n")),
    "stderr_tail" => tail(stderr_chunks.join("\n"))
  }
end

def export_human_submission_pdf
  raise "missing human/app-aligned submission source #{relative(MAIN_TEX)}" unless MAIN_TEX.file?

  argv = [
    "pdflatex",
    "-interaction=nonstopmode",
    "-halt-on-error",
    "-jobname=#{HUMAN_SUBMISSION_PDF.basename(".pdf")}",
    MAIN_TEX.basename.to_s
  ]
  stdout_chunks = []
  stderr_chunks = []
  status = nil
  2.times do
    stdout, stderr, status = Open3.capture3(*argv, chdir: BUNDLE_ROOT.to_s)
    stdout_chunks << stdout
    stderr_chunks << stderr
    unless status.success?
      detail = stderr.strip.empty? ? stdout.lines.last(40).join.strip : stderr.strip
      raise "human/app-aligned PDF compile failed: #{detail}"
    end
  end

  {
    "action" => "human-app-aligned-pdf-export",
    "problem_id" => PROBLEM_ID,
    "status" => HUMAN_SUBMISSION_PDF.file? && HUMAN_SUBMISSION_PDF.size.positive? ? "exported" : "failed",
    "render_quality" => "typeset",
    "source" => relative(MAIN_TEX),
    "pdf" => relative(HUMAN_SUBMISSION_PDF),
    "compiler" => "pdflatex",
    "stdout_tail" => tail(stdout_chunks.join("\n")),
    "stderr_tail" => tail(stderr_chunks.join("\n"))
  }
end

def sync_submission_export_status!
  current = load_yaml(EXPORT_STATUS)
  tracks = {
    "human_app_aligned" => pdf_track_payload(
      HUMAN_SUBMISSION_PDF,
      "preferred problems/** app-aligned human submission track",
      "manuscript_source" => relative(MAIN_TEX)
    ),
    "codex_machine_paper" => pdf_track_payload(
      CODEX_PAPER_PDF,
      "papers/** Codex-owned Clay-facing submission paper track",
      "manuscript_source" => relative(CODEX_MAIN_TEX)
    )
  }
  readiness_evidence = current["readiness_evidence"].is_a?(Hash) ? current["readiness_evidence"] : {}
  render_status = PaperFactoryRuntime::NightlyNsSubmissionReadinessAgreement.pdf_render_status(ROOT)
  provisional_payload = current.reject { |key, _value| %w[stdout stderr fallback].include?(key) }.merge(
    "generated_at" => Time.now.utc.iso8601,
    "status" => current["status"] || "exported",
    "render_quality" => "typeset",
    "manuscript_source" => relative(MAIN_TEX),
    "codex_machine_manuscript_source" => relative(CODEX_MAIN_TEX),
    "preferred_pdf" => relative(HUMAN_SUBMISSION_PDF),
    "pdf" => relative(CODEX_PAPER_PDF),
    "pdf_tracks" => tracks,
    "pdf_tracks_rendered" => tracks.values.all? { |track| track["present"] == true },
    "pdf_render_status" => render_status,
    "submission_ready" => current["submission_ready"],
    "readiness_evidence" => readiness_evidence.merge(
      "pdf_tracks_present" => tracks.values.all? { |track| track["present"] == true },
      "pdf_tracks_rendered" => tracks.values.all? { |track| track["present"] == true },
      "pdf_tracks" => tracks
    )
  )
  readiness = PaperFactoryRuntime::NightlyNsSubmissionReadinessAgreement.assessment(
    ROOT,
    overrides: {
      PaperFactoryRuntime::NightlyNsSubmissionReadinessAgreement::EXPORT_STATUS_PATH => provisional_payload
    },
    ignore_export_submission_ready_flag: true
  )
  readiness_evidence = readiness_evidence.merge(
    "pdf_tracks_present" => tracks.values.all? { |track| track["present"] == true },
    "pdf_tracks_rendered" => readiness["pdf_tracks_rendered"],
    "pdf_tracks" => tracks,
    "completion_readiness" => readiness
  )
  ready = readiness["submission_ready"] == true
  write_yaml(
    EXPORT_STATUS,
    provisional_payload.merge(
      "generated_at" => Time.now.utc.iso8601,
      "pdf_tracks_rendered" => readiness["pdf_tracks_rendered"],
      "pdf_render_status" => readiness["pdf_render_status"],
      "submission_ready" => ready,
      "readiness_blocker" => (ready ? nil : "Completion readiness still has #{readiness['candidate_count']} candidate(s): #{Array(readiness['candidates']).first(6).map { |entry| entry['candidate_id'] }.join(', ')}."),
      "readiness_note" => "PDF rendering is tracked separately from submission readiness; both required Navier-Stokes PDF tracks can be rendered while proof/manuscript/app agreement remains blocked.",
      "readiness_evidence" => readiness_evidence
    )
  )
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
    "codex_machine_paper" => relative(CODEX_PAPER_PDF)
  }
  expected_sources = {
    "human_app_aligned" => relative(MAIN_TEX),
    "codex_machine_paper" => relative(CODEX_MAIN_TEX)
  }
  expected_files = {
    "human_app_aligned" => HUMAN_SUBMISSION_PDF,
    "codex_machine_paper" => CODEX_PAPER_PDF
  }

  unless CODEX_PAPER_PDF.file? && CODEX_PAPER_PDF.size.positive?
    errors << "papers/Codex PDF missing"
  else
    papers_pages = pdf_page_count(CODEX_PAPER_PDF)
    errors << "papers/Codex PDF has #{papers_pages} pages; minimum Clay-facing submission proof contract is #{MIN_CODEX_SUBMISSION_PAGES}" if papers_pages < MIN_CODEX_SUBMISSION_PAGES
    errors << "papers/Codex PDF has #{papers_pages} pages; maximum Clay-facing submission paper scale is #{MAX_CODEX_SUBMISSION_PAGES}; keep the long dossier in the human/app-aligned track" if papers_pages > MAX_CODEX_SUBMISSION_PAGES
    text = pdf_text(CODEX_PAPER_PDF)
    REQUIRED_CODEX_PDF_TEXT.each do |label, pattern|
      errors << "papers/Codex PDF missing rendered #{label}" unless text.match?(pattern)
    end
    FORBIDDEN_CODEX_DOSSIER_TEXT.each do |label, pattern|
      errors << "papers/Codex PDF imports forbidden #{label}; long dossier material belongs in the human/app-aligned track" if text.match?(pattern)
    end
    if text.match?(%r{problems/navier-stokes|submission-bundle|source-forensics|theorem-construction|system/runner})
      errors << "papers/Codex PDF exposes internal source path strings"
    end
  end

  unless HUMAN_SUBMISSION_PDF.file? && HUMAN_SUBMISSION_PDF.size.positive?
    errors << "human/app-aligned PDF missing: #{relative(HUMAN_SUBMISSION_PDF)}"
  else
    human_pages = pdf_page_count(HUMAN_SUBMISSION_PDF)
    errors << "human/app-aligned PDF has #{human_pages} pages; minimum app-dossier proof-role expansion contract is #{MIN_HUMAN_APP_ALIGNED_PAGES}" if human_pages < MIN_HUMAN_APP_ALIGNED_PAGES
  end

  tracks = export_status["pdf_tracks"].is_a?(Hash) ? export_status["pdf_tracks"] : {}
  expected_tracks.each do |track_id, expected_path|
    actual_path = tracks.dig(track_id, "path").to_s
    errors << "submission export status #{track_id} track points to #{actual_path.empty? ? '(none)' : actual_path}, expected #{expected_path}" unless actual_path == expected_path
    actual_source = tracks.dig(track_id, "manuscript_source").to_s
    errors << "submission export status #{track_id} source points to #{actual_source.empty? ? '(none)' : actual_source}, expected #{expected_sources.fetch(track_id)}" unless actual_source == expected_sources.fetch(track_id)
    track = tracks[track_id] || {}
    expected_file = expected_files.fetch(track_id)
    errors << "submission export status #{track_id} sha1 is stale against live PDF" unless track["sha1"] == file_sha1(expected_file)
    errors << "submission export status #{track_id} byte count is stale against live PDF" unless track["bytes"] == (expected_file.file? ? expected_file.size : 0)
  end

  if tracks.dig("human_app_aligned", "path") == tracks.dig("codex_machine_paper", "path")
    errors << "required PDF tracks collapsed to the same output path"
  end
  if tracks.dig("human_app_aligned", "manuscript_source") == tracks.dig("codex_machine_paper", "manuscript_source")
    errors << "required PDF tracks collapsed to the same manuscript source"
  end
  if tracks.dig("human_app_aligned", "sha1").to_s == tracks.dig("codex_machine_paper", "sha1").to_s
    errors << "required PDF tracks rendered identical PDF hashes; the human/app-aligned and Codex machine papers must remain distinct outputs"
  end

  preferred_pdf = export_status["preferred_pdf"].to_s
  errors << "submission export status preferred_pdf points to #{preferred_pdf.empty? ? '(none)' : preferred_pdf}, expected #{relative(HUMAN_SUBMISSION_PDF)}" unless preferred_pdf == relative(HUMAN_SUBMISSION_PDF)
  actual_pdf = export_status["pdf"].to_s
  errors << "submission export status pdf points to #{actual_pdf}, but it must be one of the two required PDF tracks" unless actual_pdf.empty? || expected_tracks.value?(actual_pdf)

  errors << "submission export status does not mark pdf_tracks_rendered=true" unless export_status["pdf_tracks_rendered"] == true
  render_status = export_status.dig("pdf_render_status", "status").to_s
  errors << "submission export status lacks rendered pdf_render_status" unless render_status == "rendered"
  readiness = export_status.dig("readiness_evidence", "completion_readiness")
  errors << "submission export status lacks completion readiness evidence" unless readiness.is_a?(Hash)
  if export_status["submission_ready"] == true && readiness.is_a?(Hash)
    readiness_ready = readiness["submission_ready"] == true && readiness["candidate_count"].to_i.zero?
    errors << "submission export status sets submission_ready=true while completion readiness evidence is blocked" unless readiness_ready
  end
  evidence_tracks = export_status.dig("readiness_evidence", "pdf_tracks").is_a?(Hash) ? export_status.dig("readiness_evidence", "pdf_tracks") : {}
  expected_tracks.each do |track_id, expected_path|
    track = tracks[track_id] || {}
    evidence_track = evidence_tracks[track_id] || {}
    errors << "readiness evidence #{track_id} path points to #{evidence_track["path"].to_s.empty? ? '(none)' : evidence_track["path"]}, expected #{expected_path}" unless evidence_track["path"] == expected_path
    errors << "readiness evidence #{track_id} source points to #{evidence_track["manuscript_source"].to_s.empty? ? '(none)' : evidence_track["manuscript_source"]}, expected #{expected_sources.fetch(track_id)}" unless evidence_track["manuscript_source"] == expected_sources.fetch(track_id)
    errors << "readiness evidence #{track_id} sha1 is stale or missing" unless evidence_track["sha1"] == track["sha1"] && !evidence_track["sha1"].to_s.empty?
    errors << "readiness evidence #{track_id} byte count is stale" unless evidence_track["bytes"] == track["bytes"]
    expected_file = expected_files.fetch(track_id)
    errors << "readiness evidence #{track_id} sha1 is stale against live PDF" unless evidence_track["sha1"] == file_sha1(expected_file)
    errors << "readiness evidence #{track_id} byte count is stale against live PDF" unless evidence_track["bytes"] == (expected_file.file? ? expected_file.size : 0)
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
    "sha256" => file_sha256(CODEX_PAPER_PDF),
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
    "purpose" => "Regenerate the Navier-Stokes repo-depth coverage surfaces, promote them into the human/app-aligned TeX/PDF path, export the separate Codex Clay-facing paper, and fail unless both required PDF tracks visibly carry their distinct proof roles.",
    "authority" => {
      "source_manifest" => relative(NS_ROOT.join("paper-export-inputs.yaml")),
      "current_material_coverage" => relative(CURRENT_MATERIAL),
      "surface_derivation_inventory" => relative(SURFACE_INVENTORY),
      "main_tex" => relative(MAIN_TEX),
      "preferred_pdf" => relative(HUMAN_SUBMISSION_PDF),
      "codex_machine_pdf" => relative(CODEX_PAPER_PDF),
      "codex_machine_tex" => relative(CODEX_MAIN_TEX)
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
    export_result = {
      "human_app_aligned" => export_human_submission_pdf,
      "codex_machine_paper" => export_codex_paper_pdf
    }
    sync_submission_export_status!
  end

  run_command!(commands, "PDF argument hygiene", RbConfig.ruby, "problems/navier-stokes/tools/check_pdf_argument_hygiene.rb")
  run_command!(commands, "PDF output topology", RbConfig.ruby, "problems/navier-stokes/tools/check_pdf_output_topology.rb")

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
  write_yaml(verify_only? ? CHECK_LEDGER : RUN_LEDGER, result)
end

if status == "passed"
  puts "PDF_DEPTH_PROMOTION OK: #{relative(HUMAN_SUBMISSION_PDF)} and #{relative(CODEX_PAPER_PDF)}"
  exit 0
end

warn "PDF_DEPTH_PROMOTION FAILED: #{relative(RUN_LEDGER)}"
warn gates.flat_map { |gate| Array(gate["errors"]) }.reject(&:empty?).join("\n")
exit 1
