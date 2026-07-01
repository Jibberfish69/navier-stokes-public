#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path

ACTIVE_PATHS = %w[
  problems/navier-stokes/authority-reconciliation.yaml
  problems/navier-stokes/campaign-status.yaml
  problems/navier-stokes/final-release-snapshot.md
  problems/navier-stokes/live-theorem-edge.yaml
  problems/navier-stokes/marvin-v6-tandem-crosswalk.yaml
  problems/navier-stokes/paper-quality-verdict.yaml
  problems/navier-stokes/release-decision.yaml
  problems/navier-stokes/release-manifest.yaml
  problems/navier-stokes/release-notes.md
  problems/navier-stokes/review-verdict.yaml
  problems/navier-stokes/source-frontier.yaml
  problems/navier-stokes/submission-bundle/submission-export-status.yaml
  problems/navier-stokes/submission-verdict.yaml
  problems/navier-stokes/theorem-creation.yaml
  problems/navier-stokes/theorem-packet.yaml
].freeze

REQUIRED_CURRENT_AUTHORITY = %w[
  problems/navier-stokes/live-theorem-edge.yaml
  problems/navier-stokes/source-frontier.yaml
  problems/navier-stokes/theorem-packet.yaml
  problems/navier-stokes/submission-bundle/submission-export-status.yaml
].freeze

FORBIDDEN_ACTIVE_CLAIMS = {
  "installed full-MPP closure" => /full-mpp-closure-math-installed/i,
  "unconditional Clay claim" => /unconditional_clay_claim_supported:\s*true/i,
  "ready submission verdict prose" => /submission-verdict:\s*(?:submission-)?ready\b/i,
  "submission-candidate release decision" => /release-decision:\s*submission-candidate\b/i,
  "release eligible true" => /release_eligible:\s*true\b/i,
  "proof ready true" => /proof_ready:\s*true\b/i,
  "theorem packet export ready true" => /theorem_packet_export_ready:\s*true\b/i,
  "direct proof pack ready true" => /direct_proof_pack_ready:\s*true\b/i,
  "open theorem authority false" => /open_theorem_authority:\s*false\b/i,
  "terminal safe true" => /(?:target_fidelity_)?terminal_safe:\s*true\b/i,
  "zero submission blockers" => /total_submission_blockers:\s*0\b/i,
  "submission ready true" => /submission_ready:\s*true\b/i
}.freeze

REQUIRED_MARKERS = [
  "TFE2748B",
  "OriginalCriticalCapacityVariation.A"
].freeze

BLOCKED_MARKERS = [
  /open/i,
  /blocked/i,
  /not[- ]submission[- ]ready/i,
  /not[- ]ready/i,
  /unproved/i
].freeze

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
end

def scan_file(path)
  violations = []
  path.read.each_line.with_index(1) do |line, line_no|
    FORBIDDEN_ACTIVE_CLAIMS.each do |label, pattern|
      next unless line.match?(pattern)

      preview = line.gsub(/\s+/, " ").strip
      violations << "#{relative(path)}:#{line_no}: #{label}: #{preview}"
    end
  end
  violations
rescue ArgumentError
  []
end

violations = []

ACTIVE_PATHS.each do |relative_path|
  path = ROOT.join(relative_path)
  unless path.file?
    violations << "#{relative_path}: missing active Gold/readiness authority surface"
    next
  end

  violations.concat(scan_file(path))
end

REQUIRED_CURRENT_AUTHORITY.each do |relative_path|
  path = ROOT.join(relative_path)
  text = path.read
  REQUIRED_MARKERS.each do |marker|
    next if text.include?(marker)

    violations << "#{relative_path}: missing required current Gold L1 marker #{marker}"
  end
  next if BLOCKED_MARKERS.any? { |pattern| text.match?(pattern) }

  violations << "#{relative_path}: missing blocked/open/unproved readiness marker"
end

if violations.empty?
  puts "GOLD_L1_AUTHORITY_OVERCLAIM OK"
else
  warn violations.join("\n")
  exit 1
end
