#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname.new(ENV.fetch("NS_GOLD_L1_GUARD_ROOT") { Pathname.new(__dir__).join("../../..").expand_path }).expand_path

ACTIVE_PATHS = %w[
  problems/navier-stokes/assumption-ledger.yaml
  problems/navier-stokes/authority-reconciliation.yaml
  problems/navier-stokes/auto-audit.yaml
  problems/navier-stokes/artifact-self-repair.yaml
  problems/navier-stokes/campaign-status.yaml
  problems/navier-stokes/cm-convergence-atlas.yaml
  problems/navier-stokes/current-route-reproducibility-bundle.yaml
  problems/navier-stokes/debt-map.yaml
  problems/navier-stokes/final-release-snapshot.md
  problems/navier-stokes/full-proof-campaign.yaml
  problems/navier-stokes/layered-route-graph.yaml
  problems/navier-stokes/live-theorem-edge.yaml
  problems/navier-stokes/manuscript-depth.yaml
  problems/navier-stokes/marvin-v6-tandem-crosswalk.yaml
  problems/navier-stokes/paper-quality-verdict.yaml
  problems/navier-stokes/pipeline-state.yaml
  problems/navier-stokes/post-release-plan.yaml
  problems/navier-stokes/promotion-blocker-ledger.yaml
  problems/navier-stokes/release-decision.yaml
  problems/navier-stokes/release-manifest.yaml
  problems/navier-stokes/release-notes.md
  problems/navier-stokes/review-verdict.yaml
  problems/navier-stokes/source-frontier.yaml
  problems/navier-stokes/submission-bundle/submission-export-status.yaml
  problems/navier-stokes/submission-bundle/submission-verdict.yaml
  problems/navier-stokes/submission-verdict.yaml
  problems/navier-stokes/theorem-creation.yaml
  problems/navier-stokes/theorem-packet.yaml
  problems/navier-stokes/theorem-repair.yaml
  problems/navier-stokes/theorem-to-warrant.yaml
].freeze

REQUIRED_CURRENT_AUTHORITY = %w[
  problems/navier-stokes/live-theorem-edge.yaml
  problems/navier-stokes/source-frontier.yaml
  problems/navier-stokes/theorem-packet.yaml
  problems/navier-stokes/submission-bundle/submission-export-status.yaml
].freeze

THEOREM_CONSTRUCTION_OVERCLAIM_PATHS = %w[
  problems/navier-stokes/theorem-construction/mcp-final-theorem-statement-periodic-global-smoothness.md
].freeze

FORBIDDEN_ACTIVE_CLAIMS = {
  "installed full-MPP closure" => /full-mpp-closure-math-installed/i,
  "unconditional Clay claim" => /unconditional_clay_claim_supported:\s*true/i,
  "ready submission verdict prose" => /submission-verdict:\s*(?:submission-)?ready\b/i,
  "submission-candidate release decision" => /release-decision:\s*submission-candidate\b/i,
  "release eligible true" => /release_eligible:\s*true\b/i,
  "submission candidate disposition" => /(?:disposition|current_posture|current_release_status|recommended_next_stage|reopen_next_stage):\s*submission-candidate\b/i,
  "submission candidate status prose" => /current status:\s*.*submission-candidate/i,
  "export ready release posture" => /release_posture:\s*export-ready\b/i,
  "full MPP closure achieved" => /completion_tier_achieved:\s*full-mpp-closure\b/i,
  "full MPP closure submission prose" => /full-MPP closure submission candidate/i,
  "proof ready true" => /proof_ready:\s*true\b/i,
  "theorem packet export ready true" => /theorem_packet_export_ready:\s*true\b/i,
  "direct proof pack ready true" => /direct_proof_pack_ready:\s*true\b/i,
  "open theorem authority false" => /open_theorem_authority:\s*false\b/i,
  "terminal safe true" => /(?:target_fidelity_)?terminal_safe:\s*true\b/i,
  "zero submission blockers" => /total_submission_blockers:\s*0\b/i,
  "submission ready true" => /submission_ready:\s*true\b/i,
  "submission safe true" => /submission_safe:\s*true\b/i,
  "source frontier open false" => /source_frontier_open:\s*false\b/i,
  "source frontier clear true" => /source_frontier_clear:\s*true\b/i,
  "authority frontier open false" => /authority_frontier_open:\s*false\b/i,
  "authority frontier count zero" => /authority_frontier_count:\s*0\b/i,
  "authority blocking count zero" => /authority_blocking_count:\s*0\b/i,
  "current live blocking count zero" => /current_live_blocking_count:\s*0\b/i,
  "current live frontier count zero" => /current_live_frontier_count:\s*0\b/i,
  "blocking or unresolved authority count zero" => /blocking_or_unresolved_authority_count:\s*0\b/i,
  "release blocking count zero" => /release_blocking_count:\s*0\b/i,
  "all discharged true" => /all_discharged:\s*true\b/i,
  "full mpp closure ready" => /full-mpp-closure-ready/i,
  "direct live clearance" => /superseded-by-direct-live-clearance|Direct live authority reports no open theorem frontier/i
}.freeze

FORBIDDEN_THEOREM_CONSTRUCTION_CLAIMS = {
  "closed theorem statement surface" => /closed theorem[- ]statement surface/i,
  "unconditional final theorem title" => /^#\s+Final Theorem Statement:/i,
  "unconditional periodic global smoothness theorem" => /Then the incompressible Navier-Stokes system.*has a unique global smooth solution/i,
  "original data implies endpoint absence without TFE2748B" => /OriginalSmoothData\\Longrightarrow\\text\{absence of finite classical endpoint\}/i
}.freeze

CONSUMER_OR_DETECTOR_PHRASES = /
  active\s+entropy\s+deletion|
  entropy\s+deletion|
  parent[-\s]predictab(?:le|ility)(?:\s+(?:detector|weight|gate))?|
  detector|
  no[-\s]recount|
  duhamel[-\s]hodge(?:\s+(?:pullback|line|retained[-\s]operator))?|
  routed[-\s]current\s+carleson|
  selector[-\s]carrier\s+nondegeneracy|
  bmo\/reverse[-\s]holder
/ix.freeze

SOURCE_PRODUCER_PROMOTION = /
  (?:
    (?:#{CONSUMER_OR_DETECTOR_PHRASES})
    (?![^\n.;,]*\bonly\b[^\n.;,]*(?:producer|source|supply|theorem|proof))
    [^\n.;,]*
    (?:
      (?:supplies|proves|closes|discharges|installs)
      |
      (?:is|are|becomes|serves\s+as)\s+(?:the\s+)?(?:installed\s+|completed\s+)?
    )
    [^\n.;,]*
    (?:producer|source\s+producer|pde\s+producer|source\s+proof|source\s+theorem|gold\s+l1\s+source|arbitrary[-\s]data\s+supply)
  )
/ix.freeze

FORBIDDEN_SOURCE_PRODUCER_PROMOTIONS = {
  "Gold L1 consumer/detector promoted to source producer" => SOURCE_PRODUCER_PROMOTION,
  "parent-known density asserted from original data" => /parent[-\s]known\s+density\s+(?:exists|is\s+constructed|is\s+proved|is\s+supplied)\s+from\s+original\s+data/i
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
    FORBIDDEN_SOURCE_PRODUCER_PROMOTIONS.each do |label, pattern|
      next unless line.match?(pattern)

      preview = line.gsub(/\s+/, " ").strip
      violations << "#{relative(path)}:#{line_no}: #{label}: #{preview}"
    end
  end
  violations
rescue ArgumentError
  []
end

def scan_theorem_construction_overclaim(path)
  violations = []
  text = path.read
  FORBIDDEN_THEOREM_CONSTRUCTION_CLAIMS.each do |label, pattern|
    next unless text.match?(pattern)

    line_no = text[0...text.match(pattern).begin(0)].count("\n") + 1
    line = text.lines[line_no - 1].to_s.gsub(/\s+/, " ").strip
    violations << "#{relative(path)}:#{line_no}: #{label}: #{line}"
  end
  unless text.include?("TFE2748B") && text.include?("OriginalCriticalCapacityVariation.A")
    violations << "#{relative(path)}: missing conditional TFE2748B / OriginalCriticalCapacityVariation.A marker"
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

THEOREM_CONSTRUCTION_OVERCLAIM_PATHS.each do |relative_path|
  path = ROOT.join(relative_path)
  unless path.file?
    violations << "#{relative_path}: missing theorem-construction overclaim guard surface"
    next
  end

  violations.concat(scan_theorem_construction_overclaim(path))
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
