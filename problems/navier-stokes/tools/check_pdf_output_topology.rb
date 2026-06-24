#!/usr/bin/env ruby
# frozen_string_literal: true

require "open3"
require "pathname"
require "yaml"
require "digest"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
BUNDLE_ROOT = ROOT.join("problems/navier-stokes/submission-bundle")
AUTHORITATIVE_PDF = ROOT.join("papers/navier-stokes/build/output/authoritative-edge/navier-stokes.pdf")
HUMAN_SUBMISSION_PDF = BUNDLE_ROOT.join("navier-stokes-human-submission.pdf")
EXPORT_STATUS = BUNDLE_ROOT.join("submission-export-status.yaml")
RUBRIC = BUNDLE_ROOT.join("source-field-representation-rubric.md")
MIN_HUMAN_APP_ALIGNED_PAGES = 1_000
MIN_CODEX_SUBMISSION_PAGES = 20
MAX_CODEX_SUBMISSION_PAGES = 120

FORBIDDEN_CODEX_PDF_TEXT = {
  "raw source chronicle title" => /Navier-Stokes Chronological Source Chronicle/,
  "raw source catalog" => /CATALOG OF CHRONOLOGICAL SOURCES/,
  "raw source body marker" => /^SOURCE\s+\d{4}:/,
  "source chronicle footer" => /Source chronicle page/,
  "internal path string" => %r{problems/navier-stokes|submission-bundle|source-forensics|theorem-construction|system/runner},
  "visible source filename" => /\.(?:md|tex|ya?ml|rb|py|json|txt)\b/i,
  "provenance/checksum dump" => /\bsha256\b|\bbytes\b|\bmtime\b/i,
  "visible source-storage language" => /\bon disk\b|\brepo\b/i,
  "escaped source math residue" => /\b(?:begin|end|substack|boxed|texttt)\(|\binL\^|\bSothe\b|\bimplies[A-Z]/,
  "glued sentence residue" => /\b(?:first-rungledger|viscousfirst|notapressure|isalgebraically)\b/i
}.freeze

BASE_REQUIRED_CODEX_RENDERED_TEXT = {
  "same-solution contrapositive title" => /Same-Solution Contrapositive/i,
  "whole-space CM completion" => /Whole-Space CM Completion/i,
  "reader check" => /Reader Check/i,
  "CM witnesses" => /Part and Field/i
}.freeze

BLOCKED_CODEX_RENDERED_TEXT = {
  "conditional Clay-closing bridge" => /conditional Clay-closing bridge/i,
  "conditional argument boundary" => /argument remains conditional/i
}.freeze

FORBIDDEN_CODEX_DOSSIER_TEXT = {
  "proof-attempt dossier appendix" => /Proof Attempts And Failures To Prove Smoothness/i,
  "source-field reader appendix" => /Source-Field Reader Appendix/i,
  "surface derivation appendix" => /Expanded Branch-Family Obligations/i,
  "dossier-scale source-field closure" => /The source field is long because the proof program is long/i
}.freeze

def relative(path)
  Pathname.new(path).relative_path_from(ROOT).to_s
end

def pdf_pages(path)
  stdout, stderr, status = Open3.capture3("pdfinfo", path.to_s)
  raise "pdfinfo failed for #{relative(path)}: #{stderr.strip}" unless status.success?

  match = stdout.match(/^Pages:\s+(\d+)/)
  raise "pdfinfo did not report a page count for #{relative(path)}" unless match

  match[1].to_i
end

def pdf_text(path)
  stdout, stderr, status = Open3.capture3("pdftotext", path.to_s, "-")
  raise "pdftotext failed for #{relative(path)}: #{stderr.strip}" unless status.success?

  stdout
end

def load_yaml(path)
  return {} unless path.file?

  YAML.load_file(path.to_s) || {}
end

def file_sha1(path)
  return nil unless path.file?

  Digest::SHA1.file(path.to_s).hexdigest
end

errors = []
warnings = []
export_status = load_yaml(EXPORT_STATUS)
tracks = export_status["pdf_tracks"].is_a?(Hash) ? export_status["pdf_tracks"] : {}

unless HUMAN_SUBMISSION_PDF.file? && HUMAN_SUBMISSION_PDF.size.positive?
  errors << "missing Thomas human submission PDF #{relative(HUMAN_SUBMISSION_PDF)}"
else
  begin
    pages = pdf_pages(HUMAN_SUBMISSION_PDF)
    errors << "Thomas human/app-aligned submission PDF has #{pages} pages; minimum app-dossier proof-role expansion contract is #{MIN_HUMAN_APP_ALIGNED_PAGES}" if pages < MIN_HUMAN_APP_ALIGNED_PAGES
  rescue StandardError => e
    errors << e.message
  end
end

unless AUTHORITATIVE_PDF.file? && AUTHORITATIVE_PDF.size.positive?
  errors << "missing Codex paper PDF #{relative(AUTHORITATIVE_PDF)}"
else
  begin
    pages = pdf_pages(AUTHORITATIVE_PDF)
    errors << "Codex paper PDF has #{pages} pages; minimum Clay-facing submission proof contract is #{MIN_CODEX_SUBMISSION_PAGES}" if pages < MIN_CODEX_SUBMISSION_PAGES
    errors << "Codex paper PDF has #{pages} pages; maximum Clay-facing submission paper scale is #{MAX_CODEX_SUBMISSION_PAGES}; keep the long dossier in the human/app-aligned track" if pages > MAX_CODEX_SUBMISSION_PAGES
    text = pdf_text(AUTHORITATIVE_PDF)
    FORBIDDEN_CODEX_PDF_TEXT.each do |label, pattern|
      errors << "#{relative(AUTHORITATIVE_PDF)} contains forbidden #{label}" if text.match?(pattern)
    end
    BASE_REQUIRED_CODEX_RENDERED_TEXT.merge(BLOCKED_CODEX_RENDERED_TEXT).each do |label, pattern|
      errors << "Codex paper PDF is missing rendered #{label}" unless text.match?(pattern)
    end
    FORBIDDEN_CODEX_DOSSIER_TEXT.each do |label, pattern|
      errors << "Codex paper PDF imports forbidden #{label}; long dossier material belongs in the human/app-aligned track" if text.match?(pattern)
    end
  rescue StandardError => e
    errors << e.message
  end
end

expected_tracks = {
  "human_app_aligned" => relative(HUMAN_SUBMISSION_PDF),
  "codex_machine_paper" => relative(AUTHORITATIVE_PDF)
}
expected_sources = {
  "human_app_aligned" => relative(BUNDLE_ROOT.join("navier-stokes-submission.tex")),
  "codex_machine_paper" => relative(ROOT.join("papers/navier-stokes/manuscript/generated/main.tex"))
}
expected_files = {
  "human_app_aligned" => HUMAN_SUBMISSION_PDF,
  "codex_machine_paper" => AUTHORITATIVE_PDF
}

expected_tracks.each do |track_id, expected_path|
  track = tracks[track_id] || {}
  actual_path = track["path"].to_s
  actual_source = track["manuscript_source"].to_s
  errors << "submission export status #{track_id} track points to #{actual_path.empty? ? '(none)' : actual_path}, expected #{expected_path}" unless actual_path == expected_path
  errors << "submission export status #{track_id} source points to #{actual_source.empty? ? '(none)' : actual_source}, expected #{expected_sources.fetch(track_id)}" unless actual_source == expected_sources.fetch(track_id)
  expected_file = expected_files.fetch(track_id)
  warnings << "submission export status #{track_id} sha1 is stale against live PDF" unless track["sha1"] == file_sha1(expected_file)
  warnings << "submission export status #{track_id} byte count is stale against live PDF" unless track["bytes"] == (expected_file.file? ? expected_file.size : 0)
end

if tracks.dig("human_app_aligned", "path") == tracks.dig("codex_machine_paper", "path")
  errors << "required PDF tracks collapsed to the same output path"
end
if tracks.dig("human_app_aligned", "manuscript_source") == tracks.dig("codex_machine_paper", "manuscript_source")
  errors << "required PDF tracks collapsed to the same manuscript source"
end

preferred_pdf = export_status["preferred_pdf"].to_s
errors << "submission export status preferred_pdf points to #{preferred_pdf.empty? ? '(none)' : preferred_pdf}, expected #{relative(HUMAN_SUBMISSION_PDF)}" unless preferred_pdf == relative(HUMAN_SUBMISSION_PDF)
errors << "submission export status does not mark pdf_tracks_rendered=true for the two required tracks" unless export_status["pdf_tracks_rendered"] == true
errors << "submission export status lacks separate rendered pdf_render_status" unless export_status.dig("pdf_render_status", "status").to_s == "rendered"
errors << "missing reader-facing source-field rubric #{relative(RUBRIC)}" unless RUBRIC.file?

problem_pdfs = Dir.glob(ROOT.join("problems/navier-stokes/**/*.pdf").to_s).sort
allowed_problem_pdfs = [HUMAN_SUBMISSION_PDF.expand_path.to_s] +
                       Dir.glob(ROOT.join("problems/navier-stokes/submission-bundle/authoring/lab/**/*.pdf").to_s).map { |path| Pathname.new(path).expand_path.to_s } +
                       Dir.glob(ROOT.join("problems/navier-stokes/submission-bundle/authoring/templates/**/*.pdf").to_s).map { |path| Pathname.new(path).expand_path.to_s }
unexpected_problem_pdfs = problem_pdfs.reject { |path| allowed_problem_pdfs.include?(Pathname.new(path).expand_path.to_s) }
errors << "unexpected problem-local PDF outputs remain: #{unexpected_problem_pdfs.map { |path| relative(path) }.join(', ')}" unless unexpected_problem_pdfs.empty?

paper_pdfs = Dir.glob(ROOT.join("papers/navier-stokes/**/*.pdf").to_s).sort
extra_paper_pdfs = paper_pdfs.reject { |path| Pathname.new(path).expand_path == AUTHORITATIVE_PDF.expand_path }
errors << "extra paper PDFs remain outside authoritative edge: #{extra_paper_pdfs.map { |path| relative(path) }.join(', ')}" unless extra_paper_pdfs.empty?

if errors.empty?
  warn warnings.join("\n") unless warnings.empty?
  puts "PDF_OUTPUT_TOPOLOGY OK: human/app-aligned PDF #{relative(HUMAN_SUBMISSION_PDF)} and papers/Codex PDF #{relative(AUTHORITATIVE_PDF)} are both present, separate, and topology-valid."
  exit 0
end

warn errors.join("\n")
exit 1
