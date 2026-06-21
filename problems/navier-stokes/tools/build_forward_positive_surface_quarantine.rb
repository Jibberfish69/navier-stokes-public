#!/usr/bin/env ruby
# frozen_string_literal: true

require "find"
require "pathname"
require "time"
require "yaml"

ROOT = Pathname.new("/Users/thomasbirnie/Workspace/ToE/Research-Consolidation").freeze
PROBLEM_ROOT = ROOT.join("problems/navier-stokes").freeze
OUTPUT_PATH = PROBLEM_ROOT.join("forward-positive-proof-surface-quarantine-20260523.yaml").freeze

TEXT_EXTENSIONS = %w[
  .md .yaml .yml .tex .rb .txt .json .jsonl
].freeze

EXCLUDED_PATH_PARTS = [
  "/.git/",
  "/runtime/leases/",
  "/runtime/events/",
  "/tools/build_forward_positive_surface_quarantine.rb",
  "/forward-positive-proof-surface-quarantine-20260523.yaml",
  # The completion audit quotes this index and exactness marker strings as
  # provenance evidence; it is not itself a forward-positive support surface.
  "/theorem-construction/mpp-exactness-completion-audit-20260617.md"
].freeze

CATEGORY_PATTERNS = {
  "positive_smoothness_or_continuation" => [
    /positive[- ]smoothness/i,
    /smoothness proof/i,
    /prove(?:s|d|)?\s+.*smooth/i,
    /regularity proof/i,
    /global regularity/i,
    /a priori regularity/i,
    /a priori bound/i,
    /continuation control/i,
    /continuation criterion/i,
    /first[- ]failure exclusion/i,
    /cannot create first failure/i,
    /bootstrap/i,
    /no[- ]?blow[- ]?up/i,
    /H1[- ]continuation/i
  ],
  "forward_positive_supplier_or_source_wall" => [
    /forward[- ]positive/i,
    /positive[- ]supplier/i,
    /positive supplier/i,
    /positive source/i,
    /positive-source/i,
    /positive source-control/i,
    /positive no-pulse/i,
    /source-wall supplier/i,
    /source-wall closure/i,
    /NativeSourceAC\.A/,
    /mu_\*\^sing=0/,
    /LocalPositiveSourceCarleson\.A/,
    /NativePositiveSourceControl\.A/,
    /PositiveRemainderDepletion\.A/,
    /SourceWeightedTerminalAngularDepletion\.A/,
    /PositiveSource[A-Za-z0-9_.-]*\.A/,
    /Positive[A-Za-z0-9_.-]*Depletion\.A/,
    /Positive[A-Za-z0-9_.-]*Control\.A/,
    /SquareSourceEstimate\.A/,
    /ActiveShellAmplitudeGain\.A/,
    /TerminalSourceReverseHolder/,
    /UniformTemporalSourceIntegrability/,
    /HeightFluxControl\.A/,
    /BASACTerminalSourceAntiConcentration\.A/,
    /ScaleCriticalTreeCarleson\.A/,
    /OriginalSmoothDataScaleCriticalTreeCarleson\.A/
  ],
  "fixed_nu_or_euler_transfer" => [
    /fixed[- ]nu/i,
    /fixed viscosity/i,
    /EulerSmooth/,
    /NSSmooth_nu/,
    /Euler smoothness implies NS/i,
    /EulerSmoothToNS/,
    /ViscosityCannotCreateFirstFailure\.A/,
    /same datum, same interval/i
  ],
  "receiver_readout_or_endpoint_support" => [
    /receiver/i,
    /readout/i,
    /PCTP/,
    /SOURCE\.NO-PULSE/,
    /SourcePulseExclusion\.A/,
    /AWG\.A/,
    /TGC\.A/,
    /Jump_avg/,
    /ACT\.KX/,
    /DTC\.Read/,
    /Field\.Read/,
    /READ\.COVER/,
    /End_NS/,
    /LCI\.A/
  ],
  "downstream_export_or_legacy_engine" => [
    /four-bridge/i,
    /TPS/,
    /SG\.4/,
    /strict-shadow/i,
    /Euclidean/i,
    /exact-potential/i,
    /Hodge/i,
    /mixed-jet/i,
    /Lagrangian/i,
    /gradient-transfer/i,
    /classical closure/i
  ],
  "already_classified_or_quarantined_positive_surface" => [
    /not a forward positive/i,
    /not a positive smoothness proof/i,
    /not a forward positive-supplier discharge/i,
    /quarantined.*positive/i,
    /positive.*quarantined/i,
    /demoted.*positive/i,
    /positive.*demoted/i,
    /support only/i,
    /not installed CM/i,
    /not.*CM.*closure/i
  ]
}.freeze

PATH_CATEGORY_PATTERNS = {
  "fixed_nu_or_euler_transfer" => [
    /fixed[-_]?nu/i,
    /euler[-_]?smooth/i,
    /viscosity/i,
    %r{/euler-mirror/}
  ],
  "positive_smoothness_or_continuation" => [
    /regularity/i,
    /continuation/i,
    /bootstrap/i,
    /global[-_]?carrier[-_]?a[-_]?priori/i,
    /h1[-_]?continuation/i
  ],
  "forward_positive_supplier_or_source_wall" => [
    /positive/i,
    /localpositive/i,
    /sourcewall/i,
    /source-wall/i,
    /scalecritical/i,
    /sourceweighted/i,
    /heightflux/i,
    /native[-_]?source/i,
    /terminalsource/i,
    /basacterminalsource/i
  ],
  "receiver_readout_or_endpoint_support" => [
    /receiver/i,
    /readout/i,
    /pctp/i,
    /act[-_]?kx/i,
    /lci/i,
    /endpoint/i
  ],
  "downstream_export_or_legacy_engine" => [
    /strict[-_]?shadow/i,
    /euclidean/i,
    /tps/i,
    /sg4/i,
    /mixed[-_]?jet/i,
    /lagrangian/i,
    /gradient[-_]?transfer/i
  ]
}.freeze

SUPPORT_CLASSES = {
  "positive_smoothness_or_continuation" => "separate-positive-smoothness-support",
  "forward_positive_supplier_or_source_wall" => "quarantined-forward-positive-supplier-support",
  "fixed_nu_or_euler_transfer" => "separate-transfer-or-euler-comparison-support",
  "receiver_readout_or_endpoint_support" => "receiver-readout-endpoint-support",
  "downstream_export_or_legacy_engine" => "downstream-export-or-legacy-engine-support",
  "already_classified_or_quarantined_positive_surface" => "already-classified-positive-support-language"
}.freeze

def relative_path(path)
  Pathname.new(path).relative_path_from(ROOT).to_s
end

def text_file?(path)
  TEXT_EXTENSIONS.include?(File.extname(path))
end

def excluded?(path)
  normalized = path.to_s
  EXCLUDED_PATH_PARTS.any? { |part| normalized.include?(part) }
end

def read_text(path)
  raw = File.binread(path)
  return nil if raw.include?("\x00")

  raw.encode("UTF-8", invalid: :replace, undef: :replace, replace: "")
end

def path_categories(rel_path)
  PATH_CATEGORY_PATTERNS.each_with_object({}) do |(category, patterns), matches|
    hit = patterns.find { |pattern| rel_path.match?(pattern) }
    matches[category] = { "path_match" => hit.source } if hit
  end
end

def content_categories(text)
  lines = text.lines
  CATEGORY_PATTERNS.each_with_object({}) do |(category, patterns), matches|
    category_hits = []
    lines.each_with_index do |line, index|
      patterns.each do |pattern|
        next unless line.match?(pattern)

        category_hits << {
          "line" => index + 1,
          "pattern" => pattern.source,
          "excerpt" => line.strip[0, 220]
        }
        break if category_hits.length >= 6
      end
      break if category_hits.length >= 6
    end
    matches[category] = { "content_hits" => category_hits } unless category_hits.empty?
  end
end

def quarantine_entry(path)
  rel = relative_path(path)
  text = read_text(path)
  return nil unless text

  categories = path_categories(rel).merge(content_categories(text)) do |_key, left, right|
    left.merge(right)
  end
  return nil if categories.empty?

  support_classes = categories.keys.map { |category| SUPPORT_CLASSES.fetch(category) }.uniq
  {
    "path" => rel,
    "surface_scope" => rel.include?("/theorem-construction/") ? "theorem-construction" : "repo-surface",
    "matched_categories" => categories,
    "support_classes" => support_classes,
    "legacy_demotion_classes" => support_classes,
    "cm_authority" => "no-proof-authority",
    "proof_force" => "none_without_exact_cm_bridge",
    "promotion_allowed_only_by" => "explicit bridge-license landing in Silver Part_{N,Q} or Field_{N,r,Q}; Pack_Q only as Field window evidence after live-object participation is typed, or the outside-CM participation-field/window original-participation audit, after target-lock selects the CM contrapositive program",
    "forbidden_as_cm_substitute" => true
  }
end

entries = []
Find.find(PROBLEM_ROOT.to_s) do |path|
  next if File.directory?(path)
  next if excluded?(path)
  next unless text_file?(path)

  entry = quarantine_entry(path)
  entries << entry if entry
end

entries.sort_by! { |entry| entry.fetch("path") }

summary_by_class = entries.each_with_object(Hash.new(0)) do |entry, counts|
  entry.fetch("support_classes").each { |klass| counts[klass] += 1 }
end.sort.to_h

summary_by_scope = entries.each_with_object(Hash.new(0)) do |entry, counts|
  counts[entry.fetch("surface_scope")] += 1
end.sort.to_h

payload = {
  "version" => 1,
  "artifact_id" => "forward-positive-proof-surface-quarantine-20260523",
  "problem_id" => "navier-stokes",
  "generated_at" => Time.now.utc.iso8601,
  "generator" => "problems/navier-stokes/tools/build_forward_positive_surface_quarantine.rb",
  "status" => "active-no-proof-authority-index",
  "scan_scope" => "problems/navier-stokes/** text surfaces",
  "excluded_generated_self_surfaces" => EXCLUDED_PATH_PARTS,
  "entry_count" => entries.length,
  "summary_by_class" => summary_by_class,
  "summary_by_scope" => summary_by_scope,
  "support_classification_law" => {
    "governing_cm_program" => "Exit(Q):=not Member(Q) through Silver Pack_Q / Part_{N,Q} / Field_{N,r,Q} after live-object participation is typed, plus outside-CM participation-field/window original-participation audit where needed",
    "rule" => "Every indexed forward-positive, positive-supplier, continuation, transfer, receiver/readout, export, or already-classified positive surface has no CM proof authority unless an exact bridge lands the same witness in Silver Part_{N,Q} or Field_{N,r,Q}; Pack_Q only as Field window evidence, or proves the outside-CM participation-field/window original-participation audit needed before not Pack_Q can be spent.",
    "cannot_do" => [
      "set the live CM frontier",
      "close TerminalCMNoExit.A / NoGenuineCMExit.A",
      "replace the Silver witness tree or the outside-CM participation-field/window original-participation audit",
      "count as publication or release readiness",
      "turn a bad source/residue object into a deletion burden when it is already a lawful class-exit witness"
    ],
    "promotion_gate" => "Only a named bridge-license theorem that lands the exact result in Silver Pack_Q, Part_{N,Q}, Field_{N,r,Q}, or the outside-CM participation-field/window original-participation audit can promote an indexed surface for CM use.",
    "positive_program_boundary" => "When the user explicitly switches to a positive smoothness, positive supplier, fixed-nu transfer, or Euler comparison program, these surfaces may be read inside that separate program only."
  },
  "entries" => entries
}

OUTPUT_PATH.write(YAML.dump(payload).lines.map { |line| "#{line.rstrip}\n" }.join)
puts "FORWARD_POSITIVE_QUARANTINE #{entries.length}"
