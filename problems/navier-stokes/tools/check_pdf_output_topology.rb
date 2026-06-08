#!/usr/bin/env ruby
# frozen_string_literal: true

require "open3"
require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
BUNDLE_ROOT = ROOT.join("problems/navier-stokes/submission-bundle")
AUTHORITATIVE_PDF = ROOT.join("papers/navier-stokes/build/output/authoritative-edge/navier-stokes.pdf")
HUMAN_SUBMISSION_PDF = BUNDLE_ROOT.join("navier-stokes-human-submission.pdf")
EXPORT_STATUS = BUNDLE_ROOT.join("submission-export-status.yaml")
RUBRIC = BUNDLE_ROOT.join("source-field-representation-rubric.md")
MIN_HUMAN_APP_ALIGNED_PAGES = 1_000
MIN_CODEX_SUBMISSION_PAGES = 20
MAX_CODEX_SUBMISSION_PAGES = 120
MAX_REPEATED_RENDERED_CLAIMS = 25

FORBIDDEN_PDF_TEXT = {
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

RENDERED_BOILERPLATE_PATTERNS = {
  "repeated readout support claim" => /Support obligation \d+\s+has proof force through membership readout or through a\s+Field-face loss\./m,
  "repeated unselected support claim" => /CM obligation \d+\s+has no CM conclusion until it selects a same-fluid terminal packet\./m,
  "repeated endpoint reader role" => /This tells the reader how to read endpoint material without turning it into\s+a separate proof program\./m
}.freeze

REQUIRED_CODEX_RENDERED_TEXT = {
  "same-solution contrapositive title" => /Same-Solution Contrapositive/i,
  "whole-space CM completion" => /Whole-Space CM Completion/i,
  "Clay smoothness conclusion" => /Clay Smoothness Conclusion/i,
  "reader check" => /Reader Check/i,
  "CM witness faces" => /Pack, Part, and Field/i
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

def git_success?(*argv)
  _stdout, _stderr, status = Open3.capture3("git", *argv, chdir: ROOT.to_s)
  status.success?
end

def git_stdout(*argv)
  stdout, _stderr, status = Open3.capture3("git", *argv, chdir: ROOT.to_s)
  status.success? ? stdout : ""
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

errors = []

unless HUMAN_SUBMISSION_PDF.file? && HUMAN_SUBMISSION_PDF.size.positive?
  errors << "missing Thomas human submission PDF #{relative(HUMAN_SUBMISSION_PDF)}"
else
  begin
    pages = pdf_pages(HUMAN_SUBMISSION_PDF)
    if pages < MIN_HUMAN_APP_ALIGNED_PAGES
      errors << "Thomas human/app-aligned submission PDF has #{pages} pages; minimum app-dossier proof-role expansion contract is #{MIN_HUMAN_APP_ALIGNED_PAGES}"
    end
  rescue StandardError => e
    errors << e.message
  end
end

unless AUTHORITATIVE_PDF.file? && AUTHORITATIVE_PDF.size.positive?
  errors << "missing Codex paper PDF #{relative(AUTHORITATIVE_PDF)}"
else
  begin
    pages = pdf_pages(AUTHORITATIVE_PDF)
    if pages < MIN_CODEX_SUBMISSION_PAGES
      errors << "Codex paper PDF has #{pages} pages; minimum Clay-facing submission proof contract is #{MIN_CODEX_SUBMISSION_PAGES}"
    end
    if pages > MAX_CODEX_SUBMISSION_PAGES
      errors << "Codex paper PDF has #{pages} pages; maximum Clay-facing submission paper scale is #{MAX_CODEX_SUBMISSION_PAGES}; keep the long dossier in the human/app-aligned track"
    end
  rescue StandardError => e
    errors << e.message
  end

  begin
    text = pdf_text(AUTHORITATIVE_PDF)
    FORBIDDEN_PDF_TEXT.each do |label, pattern|
      errors << "Codex paper PDF contains forbidden #{label}" if text.match?(pattern)
    end
    REQUIRED_CODEX_RENDERED_TEXT.each do |label, pattern|
      errors << "Codex paper PDF is missing rendered #{label}" unless text.match?(pattern)
    end
    FORBIDDEN_CODEX_DOSSIER_TEXT.each do |label, pattern|
      errors << "Codex paper PDF imports forbidden #{label}; long dossier material belongs in the human/app-aligned track" if text.match?(pattern)
    end
    RENDERED_BOILERPLATE_PATTERNS.each do |label, pattern|
      count = text.scan(pattern).length
      next unless count > MAX_REPEATED_RENDERED_CLAIMS

      errors << "Codex paper PDF contains #{count} instances of #{label}; repeated template pages cannot satisfy the reader-facing proof-role expansion contract"
    end
  rescue StandardError => e
    errors << e.message
  end
end

problem_pdfs = Dir.glob(ROOT.join("problems/navier-stokes/**/*.pdf").to_s).sort
allowed_problem_pdfs = [HUMAN_SUBMISSION_PDF.expand_path.to_s]
unexpected_problem_pdfs = problem_pdfs.reject { |path| allowed_problem_pdfs.include?(Pathname.new(path).expand_path.to_s) }
unless unexpected_problem_pdfs.empty?
  errors << "unexpected problem-local PDF outputs remain: #{unexpected_problem_pdfs.map { |path| relative(path) }.join(', ')}"
end

paper_pdfs = Dir.glob(ROOT.join("papers/navier-stokes/**/*.pdf").to_s).sort
extra_paper_pdfs = paper_pdfs.reject { |path| Pathname.new(path).expand_path == AUTHORITATIVE_PDF.expand_path }
errors << "extra paper PDFs remain outside authoritative edge: #{extra_paper_pdfs.map { |path| relative(path) }.join(', ')}" unless extra_paper_pdfs.empty?

export_status = load_yaml(EXPORT_STATUS)
expected_tracks = {
  "human_app_aligned" => relative(HUMAN_SUBMISSION_PDF),
  "codex_machine_paper" => relative(AUTHORITATIVE_PDF)
}
expected_sources = {
  "human_app_aligned" => relative(BUNDLE_ROOT.join("navier-stokes-submission.tex")),
  "codex_machine_paper" => relative(ROOT.join("papers/navier-stokes/manuscript/generated/main.tex"))
}
tracks = export_status["pdf_tracks"].is_a?(Hash) ? export_status["pdf_tracks"] : {}
expected_tracks.each do |track_id, expected_path|
  actual_path = tracks.dig(track_id, "path").to_s
  unless actual_path == expected_path
    errors << "submission export status #{track_id} track points to #{actual_path.empty? ? '(none)' : actual_path}, expected #{expected_path}"
  end
  actual_source = tracks.dig(track_id, "manuscript_source").to_s
  unless actual_source == expected_sources.fetch(track_id)
    errors << "submission export status #{track_id} source points to #{actual_source.empty? ? '(none)' : actual_source}, expected #{expected_sources.fetch(track_id)}"
  end
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

evidence_tracks = export_status.dig("readiness_evidence", "pdf_tracks").is_a?(Hash) ? export_status.dig("readiness_evidence", "pdf_tracks") : {}
expected_tracks.each do |track_id, expected_path|
  track = tracks[track_id] || {}
  evidence_track = evidence_tracks[track_id] || {}
  unless evidence_track["path"] == expected_path
    errors << "submission readiness evidence #{track_id} track points to #{evidence_track["path"].to_s.empty? ? '(none)' : evidence_track["path"]}, expected #{expected_path}"
  end
  unless evidence_track["manuscript_source"] == expected_sources.fetch(track_id)
    errors << "submission readiness evidence #{track_id} source points to #{evidence_track["manuscript_source"].to_s.empty? ? '(none)' : evidence_track["manuscript_source"]}, expected #{expected_sources.fetch(track_id)}"
  end
  if evidence_track["sha1"].to_s.empty? || evidence_track["sha1"] != track["sha1"]
    errors << "submission readiness evidence #{track_id} sha1 is stale or missing"
  end
  errors << "submission readiness evidence #{track_id} byte count is stale" unless evidence_track["bytes"] == track["bytes"]
end

preferred_pdf = export_status["preferred_pdf"].to_s
unless preferred_pdf == relative(HUMAN_SUBMISSION_PDF)
  errors << "submission export status preferred_pdf points to #{preferred_pdf.empty? ? '(none)' : preferred_pdf}, expected #{relative(HUMAN_SUBMISSION_PDF)}"
end

status_pdf = export_status["pdf"].to_s
unless status_pdf.empty? || expected_tracks.value?(status_pdf)
  errors << "submission export status pdf points to #{status_pdf}, but it must be one of the two required PDF tracks"
end

if BUNDLE_ROOT.join("navier-stokes-source-chronicle-manifest.json").exist?
  errors << "source-chronicle manifest remains even though the contract requires reader-facing proof-role expansion"
end

errors << "missing reader-facing source-field rubric #{relative(RUBRIC)}" unless RUBRIC.file?

tracked_problem_pdfs = git_stdout("ls-files", "--", "problems/navier-stokes").lines.grep(/\.pdf\z/).map(&:strip)
tracked_problem_pdfs.each do |path|
  next unless ROOT.join(path).exist?
  next if ROOT.join(path).expand_path == HUMAN_SUBMISSION_PDF.expand_path

  errors << "tracked unexpected problem-local PDF exists outside the Thomas human submission lane: #{path}"
end

if errors.empty?
  puts "PDF_OUTPUT_TOPOLOGY OK: human/app-aligned PDF #{relative(HUMAN_SUBMISSION_PDF)} and papers/Codex PDF #{relative(AUTHORITATIVE_PDF)} are both required Navier-Stokes Clay paper tracks."
  exit 0
end

warn errors.join("\n")
exit 1
