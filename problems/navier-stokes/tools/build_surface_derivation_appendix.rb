#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"
require "time"
require "yaml"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
NS_ROOT = ROOT.join("problems/navier-stokes")
BUNDLE_ROOT = NS_ROOT.join("submission-bundle")

CERTIFICATE_PATH = NS_ROOT.join("non-euler-cm-contrapositive-proof-certificates-20260514.yaml")
QUARANTINE_PATH = NS_ROOT.join("forward-positive-proof-surface-quarantine-20260523.yaml")
COVERAGE_PATH = BUNDLE_ROOT.join("current-material-coverage.yaml")
APPENDIX_PATH = BUNDLE_ROOT.join("surface-derivation-appendix.tex")
INVENTORY_PATH = BUNDLE_ROOT.join("surface-derivation-inventory.yaml")
TARGET_CONTRACT_PATH = NS_ROOT.join("target-operating-contract.yaml")

CURRENT_AUTHORITY_OVERRIDE_20260722 = "This derivation inventory preserves the Silver negative-side classification as downstream mathematics. The governing datum-generated compatible-intersection proof is established complete through the common endpoint, pressure-complete jet, same-history restart, uniqueness, and T_*=infinity. Historical theorem names and generated rows remain provenance and cannot reopen that proof.".freeze
GOLD_L1_CUSTODY_PROVENANCE_20260702 = {
  "current_authority_override_20260702" => "The 2026-07-02 Gold custody audits remain preserved historical support.",
  "inventory_role" => "not a closure surface",
  "historical_sufficient_route" => "signed critical-height sign-persistence / peak-height theorem",
  "current_interpretation" => "The audits prevent sum and coupled-storage drift; they remain downstream support for the established direct proof."
}.freeze

def load_yaml(path)
  YAML.load_file(path.to_s)
end

def write_yaml(path, payload)
  path.write(YAML.dump(payload).lines.map { |line| "#{line.rstrip}\n" }.join)
end

def deep_copy(value)
  Marshal.load(Marshal.dump(value))
end

def silver_vpi_audit(contract)
  program = Array(contract.fetch("proof_program_topology")).find do |entry|
    entry["program_id"] == "cm-member-class-exit"
  end
  program&.fetch("silver_vpi_contrapositive_audit_20260722")
end

def latex_escape(value)
  value.to_s
       .gsub("\\", "\\textbackslash{}")
       .gsub("&", "\\&")
       .gsub("%", "\\%")
       .gsub("$", "\\$")
       .gsub("#", "\\#")
       .gsub("_", "\\_")
       .gsub("{", "\\{")
       .gsub("}", "\\}")
       .gsub("~", "\\textasciitilde{}")
       .gsub("^", "\\textasciicircum{}")
end

def prose_label(value)
  raw = value.to_s.strip
  raw = "unspecified terminal mechanism" if raw.empty?
  latex_escape(raw.tr("_", " ").gsub(/[-]+/, " ").gsub(/\s+/, " "))
end

def face_tex(face)
  case face.to_s
  when /pack/i
    "\\(\\Pack_Q\\)"
  when /part/i
    "\\(\\Part_{N,Q}\\)"
  when /field/i
    "\\(\\Field_{N,r,Q}\\)"
  else
    prose_label(face)
  end
end

def faces_tex(faces)
  listed = Array(faces).map(&:to_s).reject(&:empty?)
  return "no independent Part/Field face" if listed.empty?

  listed.map { |face| face_tex(face) }.uniq.join(", ")
end

def cm_role_phrase(role)
  {
    pack_window: "outside-CM carrier-window participation-loss presentations",
    part: "Part-face terminal obligations",
    field: "Field-face terminal obligations",
    finite_disjunction: "finite Part/Field disjunction obligations",
    inherited: "inherited-authority obligations",
    support_boundary: "support-boundary obligations"
  }.fetch(role, "CM obligations")
end

def cm_rule_phrase(rule)
  {
    "direct_face_failure" => "direct Part/Field failure",
    "finite_face_disjunction" => "finite face disjunction",
    "selected_retained_field_failure" => "retained field failure after the other faces have been removed",
    "outside_cm_field_window_participation_loss" => "outside-CM carrier/window presentation of lost full VPI participation",
    "authority_inheritance_no_independent_failure" => "authority inheritance with no new terminal face",
    "no_selected_cm_failure_without_bridge" => "support retained outside the CM conclusion until a bridge supplies a face"
  }.fetch(rule.to_s, prose_label(rule))
end

SUPPORT_CLASS_PHRASES = {
  "receiver-readout-endpoint-support" => "receiver, readout, or endpoint support",
  "quarantined-forward-positive-supplier-support" => "forward supplier support",
  "downstream-export-or-legacy-engine-support" => "downstream export or legacy-engine support",
  "separate-positive-smoothness-support" => "separate positive-smoothness support",
  "separate-transfer-or-euler-comparison-support" => "transfer or Euler-comparison support",
  "already-classified-positive-support-language" => "previously classified positive-support language"
}.freeze

SUPPORT_CLASS_HEADINGS = {
  "receiver-readout-endpoint-support" => "readout",
  "quarantined-forward-positive-supplier-support" => "supplier",
  "downstream-export-or-legacy-engine-support" => "export/legacy",
  "separate-positive-smoothness-support" => "positive smoothness",
  "separate-transfer-or-euler-comparison-support" => "transfer/Euler",
  "already-classified-positive-support-language" => "classified positive"
}.freeze

def support_class_phrase(classes)
  phrases = Array(classes).map do |klass|
    SUPPORT_CLASS_PHRASES.fetch(klass.to_s, prose_label(klass))
  end
  return "support material with no independent CM authority" if phrases.empty?

  phrases.uniq.join("; ")
end

def support_class_heading(classes)
  phrases = Array(classes).map do |klass|
    SUPPORT_CLASS_HEADINGS.fetch(klass.to_s, prose_label(klass))
  end
  return "support material" if phrases.empty?

  phrases.uniq.join(" / ")
end

def sorted_hash(hash)
  hash.to_h.sort.to_h
end

def face_role(entry)
  face_breaks = Array(entry["cm_part_field_question_breaks"]).map(&:to_s)
  rule = entry["proof_rule"].to_s

  return :finite_disjunction if rule == "finite_face_disjunction"
  return :inherited if rule == "authority_inheritance_no_independent_failure"
  return :support_boundary if rule == "no_selected_cm_failure_without_bridge"
  return :pack_window if rule == "outside_cm_field_window_participation_loss" || face_breaks.any? { |face| face.include?("Pack") }
  return :part if face_breaks.any? { |face| face.include?("Part") }
  return :field if face_breaks.any? { |face| face.include?("Field") }
  return :field if rule == "selected_retained_field_failure"

  :support_boundary
end

def cm_claim_and_proof(label, role)
  branch = label
  case role
  when :pack_window
    [
      "#{branch} presents loss of full VPI participation through carrier or Field-window failure.",
      "The original smooth-data, fixed-viscosity Navier--Stokes history remains the object. If its carrier, ancestry, or coherent field window fails, that same history no longer has full VPI participation. Pack records this outside CM; it is not a third CM face and does not by itself assert \\(\\neg\\operatorname{Member}(Q)\\).",
      "This group contributes to the exhaustive implication \\(\\neg\\operatorname{Smooth}(Q)\\Rightarrow\\neg\\operatorname{VPIParticipation}(Q)\\). Any class-exit wording still has to be localized through Part or Field."
    ]
  when :part
    [
      "#{branch} gives \\(\\neg\\Part_{N,Q}\\), hence \\(\\neg\\operatorname{Member}(Q)\\Rightarrow\\neg\\operatorname{VPIParticipation}(Q)\\).",
      "This is a failure of transport, simultaneous nonlocal pressure, viscosity, incompressibility, or material ancestry in the same original Navier--Stokes history. Part merely localizes that one loss; it does not create a separate fluid object.",
      "The group is one presentation on the negative side of the Silver implication, not a positive terminal-exclusion theorem."
    ]
  when :field
    [
      "#{branch} gives terminal Field failure, hence \\(\\neg\\operatorname{Member}(Q)\\Rightarrow\\neg\\operatorname{VPIParticipation}(Q)\\).",
      "A terminal loss of coherent surrounding-field participation is itself loss of full VPI participation by the same original history. Field is the local presentation of that loss, not a retained singular participant and not an additional PDE solution.",
      "The group belongs to the exhaustive negative inventory used by direct contraposition."
    ]
  when :finite_disjunction
    [
      "#{branch} gives a finite disjunction of negative-side presentations, each ending in loss of full VPI participation.",
      "Part and Field localize \\(\\neg\\operatorname{Member}(Q)\\); Pack remains outside CM as Field-window evidence. Dead, Blown, Jump, and any conditional limiting-PDE label name mechanisms for the same loss rather than extra terminal branches.",
      "Exhausting the listed presentations supplies \\(\\neg\\operatorname{Smooth}(Q)\\Rightarrow\\neg\\operatorname{Member}(Q)\\Rightarrow\\neg\\operatorname{VPIParticipation}(Q)\\)."
    ]
  when :inherited
    [
      "#{branch} inherits the installed VPI-complement classification and adds no new departure mechanism.",
      "The branch is a carrier of already established negative-side content. It does not create a new participant, a forward terminal burden, or a Gold dependency.",
      "Its role is provenance only; the one-line Silver contrapositive remains a classification and does not prove terminal participation retention."
    ]
  else
    [
      "#{branch} has no Silver consequence until it identifies a departure of the same original Navier--Stokes history.",
      "Support cannot assert class exit or smoothness by itself. It enters only by proving loss of full VPI participation and, where \\(\\neg\\operatorname{Member}(Q)\\) is claimed, by localizing that loss through Part or Field.",
      "This boundary prevents estimates, labels, and generated rows from replacing the exhaustive negative-side proof."
    ]
  end
end

def support_role(entry)
  classes = Array(entry["support_classes"] || entry["demotion_classes"]).map(&:to_s)
  return :comparison if classes.any? { |klass| klass.include?("transfer") || klass.include?("euler") || klass.include?("comparison") }
  return :readout if classes.any? { |klass| klass.include?("receiver") || klass.include?("readout") || klass.include?("endpoint") }
  return :positive_supplier if classes.any? { |klass| klass.include?("supplier") || klass.include?("positive") }
  return :downstream if classes.any? { |klass| klass.include?("downstream") || klass.include?("legacy") }

  :support_boundary
end

def support_claim_and_proof(label, role)
  support = label
  case role
  when :comparison
    [
      "#{support} may classify a departure only after it is derived forward from the same original Navier--Stokes history.",
      "Euler is permitted only when effective viscosity and every Reynolds, forcing, pressure, incompressibility, and ancestry defect vanish. The limiting PDE then names the same departure presentation; the proof never starts from Euler and transfers smoothness backward.",
      "The comparison has no authority unless it preserves the original history and proves loss of its full VPI participation."
    ]
  when :readout
    [
      "#{support} has Silver force only when it records Field failure or another loss of full VPI participation in the same history.",
      "A bounded readout is not a separate Silver premise. A terminal failed readout may localize Field loss, and that Field loss is loss of full VPI participation rather than a surviving singular participant.",
      "The readout therefore classifies the negative side; it does not replace the one-line contrapositive."
    ]
  when :positive_supplier
    [
      "#{support} belongs to the independent nonblocking Gold lane unless it classifies a same-history VPI participation loss.",
      "Positive estimates are not premises of Silver and cannot replace its contrapositive with a forward terminal proof. Only their exact negative-side departure consequence, if proved, enters this inventory.",
      "Gold may remain open as downstream research, but it is not required for the established direct global-regularity proof."
    ]
  when :downstream
    [
      "#{support} contributes only through a named same-history participation-loss classification.",
      "A downstream label has no independent theorem force. It must identify which element of full VPI participation fails and, for a class-exit assertion, how Part or Field localizes \\(\\neg\\operatorname{Member}(Q)\\).",
      "Anything else remains provenance outside the Silver classification."
    ]
  else
    [
      "#{support} is admissible only after it names the same original history and the full-participation component that fails.",
      "A support statement with no such loss supplies no negative-side conclusion. Pack remains outside CM; Part and Field localize class membership without splitting the fluid into separate mechanisms.",
      "This keeps support material subordinate to the exhaustive VPI-complement implication."
    ]
  end
end

FAMILY_EXPANSIONS = {
  "basac_pressure_zeno_source_residue_family" => [
    "Source-reserve family",
    "This branch family is tested by source survival, zero-radius refinement, signed-current/no-free-sink pressure, retained amplitude, and terminal atom mechanisms.",
    "Every terminal mechanism is applied to the same original Navier--Stokes history. Loss of the coupled pressure-viscosity participation gives Part failure; loss of coherent surrounding-field participation gives Field failure; carrier/window loss is outside-CM Field-window evidence. Each realized departure loses full VPI participation."
  ],
  "late_l3_duhamel_translator_notes" => [
    "Local translator family",
    "This family tests local critical translation as a same-solution packet question.",
    "The translator has proof force only on the same Navier--Stokes history. Loss of its pressure-viscosity participation is Part-side; loss of surrounding-field coherence is Field-side; either loses full VPI participation."
  ],
  "late_cm_direction_or_same_ledger_notes" => [
    "Same-ledger family",
    "This family asks whether the terminal branch is still charged to the same witness record.",
    "A terminal item must remain the same material/all-field record. An imported or reset branch has no Silver force because it is not the original no-reset history."
  ],
  "cm_class_law_completion_and_adversarial_audits" => [
    "Class-law family",
    "This family checks the exhaustive negative-side inventory.",
    "A claimed extra departure must preserve full VPI participation while being nonsmooth to escape the contrapositive. Dead, Blown, Jump, Part, Field, and conditional limiting-PDE presentations instead reduce to lost participation."
  ],
  "local_energy_elliptic_formalization_support" => [
    "Local energy and elliptic family",
    "This family supplies analytic support for source-wall and classification tests.",
    "Local energy and elliptic control matter only when they classify which component of the same history's full VPI participation fails. Positive estimates remain Gold support."
  ],
  "euler_mirror_current_exclusions" => [
    "Comparison-boundary family",
    "This family marks conditional limiting-PDE presentations derived from the original Navier--Stokes history.",
    "Euler is used only if the canonical zero-defect conditions hold. Otherwise the remaining defect itself identifies loss of full VPI participation or routes to another limiting PDE."
  ],
  "current_theorem_creation_candidate_notes" => [
    "Candidate-branch family",
    "This family contains candidate pressure tests and route probes.",
    "A candidate becomes proof material only when it names the same original history and proves which aspect of full VPI participation fails. Part and Field may localize class exit; Pack cannot become a CM face."
  ]
}.freeze

def family_expansions(families)
  families.each_with_object([]) do |family, expansions|
    title, claim, proof = FAMILY_EXPANSIONS[family["id"]]
    next unless title

    expansions << [
      title,
      family.fetch("file_count", Array(family["files"]).length),
      family["paper_representation"],
      claim,
      proof
    ]
  end
end

def count_summary(values, empty: "none", limit: 14)
  counts = values.map(&:to_s).map(&:strip).reject(&:empty?).group_by(&:itself).transform_values(&:length)
  return empty if counts.empty?

  listed = counts.sort_by { |value, count| [-count, value] }.first(limit)
  rendered = listed.map { |value, count| "#{prose_label(value)} (#{count})" }
  remaining = counts.length - listed.length
  rendered << "#{remaining} further mechanism#{remaining == 1 ? '' : 's'}" if remaining.positive?
  rendered.join("; ")
end

def face_summary(entries)
  labels = entries.map do |entry|
    faces = Array(entry["cm_part_field_question_breaks"]).map(&:to_s).reject(&:empty?)
    cm_faces = faces.reject { |face| face.match?(/Pack/i) }
    if cm_faces.empty? && faces.any? { |face| face.match?(/Pack/i) }
      "outside-CM Field-window evidence"
    elsif cm_faces.empty?
      "no independent Part/Field face"
    else
      faces_tex(cm_faces.sort)
    end
  end
  counts = labels.map(&:strip).reject(&:empty?).group_by(&:itself).transform_values(&:length)
  return "no independent Part/Field face" if counts.empty?

  listed = counts.sort_by { |value, count| [-count, value] }.first(14)
  rendered = listed.map { |value, count| "#{value} (#{count})" }
  remaining = counts.length - listed.length
  rendered << "#{remaining} further mechanism#{remaining == 1 ? '' : 's'}" if remaining.positive?
  rendered.join("; ")
end

now = Time.now.utc.iso8601
certificate = load_yaml(CERTIFICATE_PATH)
quarantine = load_yaml(QUARANTINE_PATH)
coverage = load_yaml(COVERAGE_PATH)
target_contract = load_yaml(TARGET_CONTRACT_PATH)
completion = target_contract.fetch("proof_program_completion")
unless completion["status"] == "established-complete" &&
       completion["mpp_status"] == "solved" &&
       completion["producer_status"] == "proved-datum-generated-whole-terminal-compatible-rectangles" &&
       completion["closure_status"] == "proved" &&
       completion["active_direct_boundary"] == "none"
  abort "canonical completed proof-program authority changed"
end
closure = silver_vpi_audit(target_contract)
abort "missing canonical Silver VPI contrapositive audit" unless closure
unless closure.fetch("closure_status") == "logical-classification-terminal-participation-retention-unproved"
  abort "canonical Silver classification changed its terminal-retention boundary"
end

certificate_entries = Array(certificate["certificates"])
quarantine_entries = Array(quarantine["entries"])
coverage_families = Array(coverage.dig("coverage_gap_after_existing_surfaces", "families"))

certificate_by_rule = certificate_entries.group_by { |entry| entry["proof_rule"].to_s }
quarantine_by_scope = quarantine_entries.group_by { |entry| entry["surface_scope"].to_s }

inventory = {
  "version" => 1,
  "problem_id" => "navier-stokes",
  "generated_at" => now,
  "generator" => "problems/navier-stokes/tools/build_surface_derivation_appendix.rb",
  "purpose" => "Group every relevant Navier-Stokes surface under the completed direct proof while preserving the Silver VPI-complement classification as downstream mathematics.",
  "proof_program_completion" => completion,
  "current_authority_override_20260722" => CURRENT_AUTHORITY_OVERRIDE_20260722,
  "gold_l1_custody_provenance_20260702" => GOLD_L1_CUSTODY_PROVENANCE_20260702,
  "canonical_silver_vpi_contrapositive" => closure,
  "gold_lane_boundary" => "Gold is a downstream support/research lane and is not required for the established direct compatible-intersection closure.",
  "sources" => {
    "certificates" => CERTIFICATE_PATH.relative_path_from(ROOT).to_s,
    "forward_positive_quarantine" => QUARANTINE_PATH.relative_path_from(ROOT).to_s,
    "current_material_coverage" => COVERAGE_PATH.relative_path_from(ROOT).to_s
  },
  "summary" => {
    "certificate_rows" => certificate_entries.length,
    "certificate_rows_by_rule" => sorted_hash(certificate_by_rule.transform_values(&:length)),
    "quarantine_rows" => quarantine_entries.length,
    "quarantine_rows_by_scope" => sorted_hash(quarantine_by_scope.transform_values(&:length)),
    "current_material_family_rows" => coverage_families.sum { |family| Array(family["files"]).length },
    "current_material_families" => coverage_families.map { |family| { "id" => family["id"], "file_count" => family["file_count"] } },
    "mathematical_appendix_expansion_rows" => certificate_entries.length + quarantine_entries.length + family_expansions(coverage_families).length
  },
  "certificate_rows" => certificate_entries.map.with_index(1) do |entry, index|
    {
      "index" => index,
      "path" => entry["path"],
      "proof_rule" => entry["proof_rule"],
      "contrapositive_status" => entry["contrapositive_status"],
      "diagnostic_status" => entry["diagnostic_status"],
      "face_sort" => entry["face_sort"],
      "selected_failure_type" => entry["selected_failure_type"],
      "cm_part_field_question_breaks" => Array(entry["cm_part_field_question_breaks"]),
      "proof_statement" => entry["proof_statement"],
      "proof_explanation" => entry["proof_explanation"]
    }
  end,
  "forward_positive_quarantine_rows" => quarantine_entries.map.with_index(1) do |entry, index|
    {
      "index" => index,
      "path" => entry["path"],
      "surface_scope" => entry["surface_scope"],
      "support_classes" => Array(entry["support_classes"] || entry["demotion_classes"]),
      "cm_authority" => entry["cm_authority"],
      "promotion_allowed_only_by" => entry["promotion_allowed_only_by"],
      "forbidden_as_cm_substitute" => entry["forbidden_as_cm_substitute"]
    }
  end,
  "current_material_family_rows" => coverage_families.map do |family|
    {
      "id" => family["id"],
      "file_count" => family["file_count"],
      "paper_representation" => family["paper_representation"],
      "files" => Array(family["files"])
    }
  end
}

tex = []
tex << "% Generated by problems/navier-stokes/tools/build_surface_derivation_appendix.rb"
tex << "% Internal source names stay in surface-derivation-inventory.yaml."
tex << "% The visible content below is mathematical branch expansion only."
tex << ""
tex << "\\clearpage"
tex << "\\section{Silver VPI-Complement Classification}"
tex << ""
tex << "For one smooth-data, fixed-positive-viscosity, no-reset original Navier--Stokes history, the negative implication and its direct contrapositive are valid: \\(\\neg\\operatorname{Smooth}(Q)\\Rightarrow\\neg\\operatorname{Member}(Q)\\Rightarrow\\neg\\operatorname{VPIParticipation}(Q)\\), hence \\(\\operatorname{VPIParticipation}(Q)\\Rightarrow\\operatorname{Member}(Q)\\Rightarrow\\operatorname{Smooth}(Q)\\). The grouped rows classify departure presentations. They do not prove that the candidate terminal object retains full VPI participation, so they do not establish global regularity."
tex << ""

certificate_groups = certificate_entries.group_by { |entry| face_role(entry) }

certificate_groups.sort_by { |role, rows| [role.to_s, -rows.length] }.each_with_index do |(role, rows), group_index|
  tex << "\\subsection{Negative-side presentation #{group_index + 1}: #{latex_escape(cm_role_phrase(role))}}"
  tex << "This group accounts for #{rows.length} classified surface#{rows.length == 1 ? '' : 's'}. The rules represented here are #{count_summary(rows.map { |entry| cm_rule_phrase(entry["proof_rule"]) })}. The Part/Field localizations are #{face_summary(rows)}. The departure mechanisms represented here are #{count_summary(rows.map { |entry| entry["selected_failure_type"] })}."
  tex << ""
  claim, proof, reader_role = cm_claim_and_proof("Negative-side presentation #{group_index + 1}", role)
  tex << "\\paragraph{Family inventory role.}"
  tex << "\\emph{Inventory statement.} #{claim}"
  tex << ""
  tex << "\\emph{Support explanation.} #{proof}"
  tex << ""
  tex << "\\emph{Reader-facing role.} #{reader_role}"
  tex << ""
end

tex << ""

tex << "\\section{Expanded Forward-Support Obligations}"
tex << ""
tex << "Forward-positive and negative-side participation materials are preserved as downstream support. The direct datum-generated compatible-intersection proof is already established complete and does not depend on these auxiliary routes."
tex << ""

support_groups = quarantine_entries.group_by { |entry| support_role(entry) }

support_groups.sort_by { |role, rows| [role.to_s, -rows.length] }.each_with_index do |(role, rows), group_index|
  classes = rows.flat_map { |entry| Array(entry["support_classes"] || entry["demotion_classes"]).map(&:to_s) }.uniq.sort
  tex << "\\subsection{Support proof role #{group_index + 1}: #{latex_escape(support_class_heading(classes))}}"
  tex << "This proof role accounts for #{rows.length} support obligation#{rows.length == 1 ? '' : 's'} with one mathematical support job. The support classes represented here are #{count_summary(rows.map { |entry| support_class_phrase(entry["support_classes"] || entry["demotion_classes"]) })}. The support may enter Silver only through an exact same-history participation-loss bridge; Part or Field is additionally required when it asserts class exit."
  tex << ""
  claim, proof, reader_role = support_claim_and_proof("Support proof role #{group_index + 1}", role)
  tex << "\\paragraph{Family support role.}"
  tex << "\\emph{Support statement.} #{claim}"
  tex << ""
  tex << "\\emph{Support explanation.} #{proof}"
  tex << ""
  tex << "\\emph{Reader-facing role.} #{reader_role}"
  tex << ""
end

tex << ""

tex << "\\section{Expanded Branch-Family Obligations}"
tex << ""
tex << "The current-material coverage families are represented by mathematical proof roles rather than file names. Repetition is by branch family, so the visible appendix shows the obligation being carried instead of repeating the same anonymous sentence for every source item."
tex << ""

family_expansions(coverage_families).each_with_index do |(title, total, _representation, claim, proof), index|
  tex << "\\paragraph{Branch-family obligation #{index + 1}.}"
  tex << "\\emph{#{latex_escape(title)}.} This family records #{total} current support or inventory obligation#{total == 1 ? '' : 's'}."
  tex << ""
  tex << claim
  tex << ""
  tex << "\\emph{Support explanation.} #{proof}"
  tex << ""
end

appendix_text = "#{tex.join("\n").rstrip}\n"

if ARGV.include?("--check-inventory-only")
  unless INVENTORY_PATH.exist?
    abort "surface-derivation inventory is missing; rerun #{__FILE__} --inventory-only"
  end

  existing_inventory = load_yaml(INVENTORY_PATH)
  comparable_existing = deep_copy(existing_inventory)
  comparable_expected = deep_copy(inventory)
  comparable_existing["generated_at"] = comparable_expected["generated_at"]
  unless comparable_existing == comparable_expected
    abort "surface-derivation inventory is stale; rerun #{__FILE__} --inventory-only"
  end

  puts "SURFACE_DERIVATION_INVENTORY_CHECK certificates=#{certificate_entries.length} quarantine=#{quarantine_entries.length} current_material=#{coverage_families.sum { |family| Array(family["files"]).length }}"
  exit 0
end

if ARGV.include?("--check")
  unless APPENDIX_PATH.exist?
    abort "surface-derivation appendix is missing; rerun #{__FILE__}"
  end
  unless INVENTORY_PATH.exist?
    abort "surface-derivation inventory is missing; rerun #{__FILE__}"
  end

  existing_inventory = load_yaml(INVENTORY_PATH)
  comparable_existing = deep_copy(existing_inventory)
  comparable_expected = deep_copy(inventory)
  comparable_existing["generated_at"] = comparable_expected["generated_at"]
  unless comparable_existing == comparable_expected
    abort "surface-derivation inventory is stale; rerun #{__FILE__}"
  end
  unless APPENDIX_PATH.read == appendix_text
    abort "surface-derivation appendix is stale; rerun #{__FILE__}"
  end

  puts "SURFACE_DERIVATION_APPENDIX_CHECK certificates=#{certificate_entries.length} quarantine=#{quarantine_entries.length} current_material=#{coverage_families.sum { |family| Array(family["files"]).length }}"
  exit 0
end

if ARGV.include?("--inventory-only")
  write_yaml(INVENTORY_PATH, inventory)
  puts "SURFACE_DERIVATION_INVENTORY certificates=#{certificate_entries.length} quarantine=#{quarantine_entries.length} current_material=#{coverage_families.sum { |family| Array(family["files"]).length }}"
  exit 0
end

write_yaml(INVENTORY_PATH, inventory)
APPENDIX_PATH.write(appendix_text)
puts "SURFACE_DERIVATION_APPENDIX certificates=#{certificate_entries.length} quarantine=#{quarantine_entries.length} current_material=#{coverage_families.sum { |family| Array(family["files"]).length }} mathematical_expansions=#{certificate_entries.length + quarantine_entries.length + family_expansions(coverage_families).length}"
