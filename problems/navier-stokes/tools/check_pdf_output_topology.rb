#!/usr/bin/env ruby
# frozen_string_literal: true

require "open3"
require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
BUNDLE_ROOT = ROOT.join("problems/navier-stokes/submission-bundle")
AUTHORITATIVE_PDF = BUNDLE_ROOT.join("navier-stokes-submission.pdf")
RUBRIC = ROOT.join("problems/navier-stokes/submission-bundle/source-field-representation-rubric.md")
MIN_AUTHORITATIVE_PAGES = 1_000
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
  unless status.success?
    raise "pdfinfo failed for #{relative(path)}: #{stderr.strip}"
  end

  match = stdout.match(/^Pages:\s+(\d+)/)
  raise "pdfinfo did not report a page count for #{relative(path)}" unless match

  match[1].to_i
end

def pdf_text(path)
  stdout, stderr, status = Open3.capture3("pdftotext", path.to_s, "-")
  unless status.success?
    raise "pdftotext failed for #{relative(path)}: #{stderr.strip}"
  end

  stdout
end

errors = []

unless AUTHORITATIVE_PDF.file? && AUTHORITATIVE_PDF.size.positive?
  errors << "missing authoritative PDF #{relative(AUTHORITATIVE_PDF)}"
else
  begin
    pages = pdf_pages(AUTHORITATIVE_PDF)
    if pages < MIN_AUTHORITATIVE_PAGES
      errors << "authoritative PDF has #{pages} pages; minimum reader-facing proof-role expansion contract is #{MIN_AUTHORITATIVE_PAGES}"
    end
  rescue StandardError => e
    errors << e.message
  end

  begin
    text = pdf_text(AUTHORITATIVE_PDF)
    FORBIDDEN_PDF_TEXT.each do |label, pattern|
      next unless text.match?(pattern)

      errors << "authoritative PDF contains forbidden #{label}"
    end
    RENDERED_BOILERPLATE_PATTERNS.each do |label, pattern|
      count = text.scan(pattern).length
      next unless count > MAX_REPEATED_RENDERED_CLAIMS

      errors << "authoritative PDF contains #{count} instances of #{label}; repeated template pages cannot satisfy the reader-facing proof-role expansion contract"
    end
  rescue StandardError => e
    errors << e.message
  end
end

if git_success?("check-ignore", "-q", relative(AUTHORITATIVE_PDF))
  errors << "authoritative problem-local PDF is ignored by git: #{relative(AUTHORITATIVE_PDF)}"
end

bundle_pdfs = Dir.glob(BUNDLE_ROOT.join("**/*.pdf").to_s).sort.reject do |path|
  Pathname.new(path).expand_path == AUTHORITATIVE_PDF.expand_path
end
unless bundle_pdfs.empty?
  errors << "rival problem-local PDF outputs remain: #{bundle_pdfs.map { |path| relative(path) }.join(', ')}"
end

if OUTPUT_DIR.join("navier-stokes-source-chronicle-manifest.json").exist?
  errors << "source-chronicle manifest remains even though the contract requires reader-facing proof-role expansion"
end

unless RUBRIC.file?
  errors << "missing reader-facing source-field rubric #{relative(RUBRIC)}"
end

tracked_bundle_pdfs = git_stdout("ls-files", "--", "problems/navier-stokes/submission-bundle").lines.grep(/\.pdf\z/).map(&:strip)
tracked_bundle_pdfs.each do |path|
  next if path == relative(AUTHORITATIVE_PDF)
  next unless ROOT.join(path).exist?

  errors << "tracked bundle-local PDF exists as rival authority: #{path}"
end

if errors.empty?
  puts "PDF_OUTPUT_TOPOLOGY OK: #{relative(AUTHORITATIVE_PDF)} is the only problem-local Navier-Stokes PDF output authority and satisfies the reader-facing proof-role expansion contract."
  exit 0
end

warn errors.join("\n")
exit 1
