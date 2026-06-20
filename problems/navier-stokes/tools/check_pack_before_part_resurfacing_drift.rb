#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path

ACTIVE_PATHS = %w[
  problems/navier-stokes/agent-contract.yaml
  problems/navier-stokes/live-theorem-edge.yaml
  problems/navier-stokes/target-operating-contract.yaml
  problems/navier-stokes/cm-exit-live-surface-audit-20260514.yaml
  problems/navier-stokes/derivation-run.yaml
  problems/navier-stokes/review-verdict.yaml
  problems/navier-stokes/source-frontier.yaml
  problems/navier-stokes/ns-proof-program-route-table.yaml
  problems/navier-stokes/theorem-crank.yaml
  problems/navier-stokes/theorem-repair.yaml
  problems/navier-stokes/theorem-packet.yaml
  problems/navier-stokes/proof-assembly.yaml
  problems/navier-stokes/warrant-compilation.yaml
  problems/navier-stokes/auto-audit.yaml
  problems/navier-stokes/route-lock.yaml
  problems/navier-stokes/theorem-to-warrant.yaml
  problems/navier-stokes/release-decision.yaml
  problems/navier-stokes/release-manifest.yaml
  problems/navier-stokes/route-integrity-report.yaml
  problems/navier-stokes/submission-verdict.yaml
  problems/navier-stokes/forward-positive-proof-surface-quarantine-20260523.yaml
  problems/navier-stokes/draft.md
  problems/navier-stokes/draft-v6.md
  problems/navier-stokes/prewrite-packet.md
  problems/navier-stokes/obstruction-capture.md
  problems/navier-stokes/claim-ladder.md
  problems/navier-stokes/spine.md
  problems/navier-stokes/submission-bundle/theorem-packet.yaml
  problems/navier-stokes/submission-bundle/source-frontier.yaml
  problems/navier-stokes/submission-bundle/submission-verdict.yaml
  problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex
  problems/navier-stokes/tools/ns_pipeline_hardener.rb
  problems/navier-stokes/tools/build_forward_positive_surface_quarantine.rb
  system/runner/lib/ns_cm_contrapositive_behavior_contract.rb
  system/runner/lib/prose_packet_builder.rb
  system/runner/lib/prose_draft_builder.rb
  system/runner/lib/theorem_packet_builder.rb
  system/runner/lib/research_os_mcp_server.rb
  system/runner/lib/nightly_ns_completion_engine.rb
  system/runner/lib/codex_conversation_guard.rb
  system/runner/lib/theorem_creation_builder.rb
  system/runner/lib/theorem_invention_support.rb
  system/runner/lib/creative_theorem_search_builder.rb
  system/runner/lib/debt_map_builder.rb
  system/runner/test/agent_contract_builder_test.rb
  system/runner/test/research_os_mcp_server_test.rb
  system/runner/test/codex_conversation_guard_test.rb
  system/runner/test/research_os_behaviour_support_test.rb
  system/runner/test/theorem_invention_support_test.rb
  system/runner/test/dependency_discharge_builder_test.rb
  system/runner/test/dependency_discharge_worker_test.rb
].freeze

FORBIDDEN = {
  "old Pack-first continuation packet tree" => /Pack-first continuation-packet tree/,
  "old Pack-first CM exit tree" => /Pack-first CM exit tree/,
  "old retained-Pack participation ordering" => /if Pack survives|once Pack is retained/,
  "old YAML promotion gate" => /promotion_gate:\s*Pack_Q, Part_\{N,Q\}, or Field/,
  "old exact bridge gate" => /bridge lands the exact result in Pack_Q, Part_\{N,Q\}, or Field/,
  "old exact-claim bridge gate" => /lands an exact claim in Pack_Q, Part_\{N,Q\}, or Field/,
  "old sidecar landing gate" => /support only until it lands in Pack_Q, Part_\{N,Q\}, or Field/,
  "old mandatory promotion rule" => /must land in Pack_Q, Part_\{N,Q\}, or Field_\{N,r,Q\}/,
  "old bare witness-face landing" => /(?<!Silver )witness-face landing in Pack_Q, Part_\{N,Q\}, or Field/,
  "old terminal Zeno Pack-only landing" => /terminal zero-radius residue .*lands (?:first )?as `?not Pack_Q`?/,
  "old zero-heat-time Pack-only landing" => /terminal zero-heat-time source residue is not Pack_Q/,
  "old BASAC Pack-side non-survival" => /terminal Zeno\/B_ASAC zero-thickness endpoint.*Pack-side non-survival/,
  "old zero-radius not-Pack closure" => /zero-radius residue lands as not Pack_Q/,
  "old terminal limit Pack-only landing" => /terminal limit `r_m -> 0` is `not Pack_Q`/,
  "old zero-heat-time terminal Pack failure" => /ZeroHeatTimeSourceResidue\.A.*terminal Pack failure/,
  "old zero-radius lands-first Pack wording" => /zero-radius .*lands first at not Pack_Q/,
  "old zero-radius is-not-Pack wording" => /zero-radius .*is not Pack_Q/,
  "old r-star point not-Pack rule" => /r_\*=0 => not Pack_Q/,
  "old prose zero-radius not-Pack wording" => /zero-radius .*not Pack Q/,
  "old prose terminal Zeno Pack-side exit" => /terminal zero-radius Zeno atom remains a Pack-side CM exit/,
  "old Pack-first zero-radius diagnostic" => /Pack-first zero-radius diagnostic placement/,
  "old terminal Zeno Pack correction prose" => /terminal Zeno Pack correction gives not Pack Q/
}.freeze

REQUIRED_MARKERS = [
  "PackBeforePartDependencyResurfacing",
  "Pack-before-Part",
  "pre-Pack Part",
  "pre-Pack not-Pack",
  "pre-Pack pointwise",
  "Part-first resurfacing",
  "pointwise original-NS participation",
  "Silver Pack_Q",
  "Silver CM exit tree"
].freeze

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
end

violations = []

ACTIVE_PATHS.each do |relative_path|
  path = ROOT.join(relative_path)
  unless path.file?
    violations << "#{relative_path}: missing active surface"
    next
  end

  text = path.read
  unless REQUIRED_MARKERS.any? { |marker| text.include?(marker) }
    violations << "#{relative_path}: missing Pack-before-Part resurfacing marker"
  end

  text.each_line.with_index(1) do |line, line_no|
    FORBIDDEN.each do |label, pattern|
      next unless line.match?(pattern)

      preview = line.gsub(/\s+/, " ").strip
      violations << "#{relative(path)}:#{line_no}: #{label}: #{preview}"
    end
  end
rescue ArgumentError
  next
end

if violations.empty?
  puts "PACK_BEFORE_PART_RESURFACING_DRIFT OK"
else
  warn violations.join("\n")
  exit 1
end
