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

def load_yaml(path)
  YAML.load_file(path.to_s)
end

def write_yaml(path, payload)
  path.write(YAML.dump(payload).lines.map { |line| "#{line.rstrip}\n" }.join)
end

def deep_copy(value)
  Marshal.load(Marshal.dump(value))
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
  return "no independent Pack/Part/Field face" if listed.empty?

  listed.map { |face| face_tex(face) }.uniq.join(", ")
end

def cm_role_phrase(role)
  {
    pack: "Pack-face terminal obligations",
    part: "Part-face terminal obligations",
    field: "Field-face terminal obligations",
    finite_disjunction: "finite Pack/Part/Field disjunction obligations",
    inherited: "inherited-authority obligations",
    support_boundary: "support-boundary obligations"
  }.fetch(role, "CM obligations")
end

def cm_rule_phrase(rule)
  {
    "direct_face_failure" => "direct face failure",
    "finite_face_disjunction" => "finite face disjunction",
    "selected_retained_field_failure" => "retained field failure after the other faces have been removed",
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
  "already-demoted-positive-support-language" => "demoted positive-support language"
}.freeze

def support_class_phrase(classes)
  phrases = Array(classes).map do |klass|
    SUPPORT_CLASS_PHRASES.fetch(klass.to_s, prose_label(klass))
  end
  return "support material with no independent CM authority" if phrases.empty?

  phrases.uniq.join("; ")
end

def sorted_hash(hash)
  hash.to_h.sort.to_h
end

def face_role(entry)
  face_breaks = Array(entry["cm_face_breaks"]).map(&:to_s)
  rule = entry["proof_rule"].to_s

  return :finite_disjunction if rule == "finite_face_disjunction"
  return :inherited if rule == "authority_inheritance_no_independent_failure"
  return :support_boundary if rule == "no_selected_cm_failure_without_bridge"
  return :pack if face_breaks.any? { |face| face.include?("Pack") }
  return :part if face_breaks.any? { |face| face.include?("Part") }
  return :field if face_breaks.any? { |face| face.include?("Field") }
  return :field if rule == "selected_retained_field_failure"

  :support_boundary
end

def cm_claim_and_proof(index, role)
  branch = "B_{#{index}}"
  case role
  when :pack
    [
      "\\(#{branch}\\Rightarrow\\neg\\Pack_Q\\), hence \\(#{branch}\\Rightarrow\\Exit(Q;\\Owork)\\).",
      "A member branch must first carry \\(Q\\) by a positive same-fluid packet. The selected terminal branch loses that carrier service before any participation or field readout can be asked of it. The Pack-first order therefore gives \\(\\neg\\Pack_Q\\), and the class-exit embedding gives \\(\\Exit(Q;\\Owork)\\)."
    ]
  when :part
    [
      "\\(#{branch}\\Rightarrow \\Pack_Q\\wedge\\neg\\Part_{N,Q}\\), hence \\(#{branch}\\Rightarrow\\Exit(Q;\\Owork)\\).",
      "Here the carrier question has already passed for the purpose of the split. The branch still has to participate in the same pressure-viscosity tower as the original Navier--Stokes solution. The selected failure breaks that tower, so the first surviving lost service is \\(\\Part_{N,Q}\\). The face failure embeds as class exit."
    ]
  when :field
    [
      "\\(#{branch}\\Rightarrow \\Pack_Q\\wedge\\Part_{N,Q}\\wedge\\forall r>0\\,\\neg\\Field_{N,r,Q}\\), hence \\(#{branch}\\Rightarrow\\Exit(Q;\\Owork)\\).",
      "This branch is read after carrier and participation have survived for the case split. The remaining continuation service is a positive-scale coherent field readout. The terminal branch has no such scale at any \\(r>0\\), so the Field face fails and the failure embeds as \\(\\Exit(Q;\\Owork)\\)."
    ]
  when :finite_disjunction
    [
      "\\(#{branch}\\Rightarrow \\neg\\Pack_Q\\vee\\neg\\Part_{N,Q}\\vee\\forall r>0\\,\\neg\\Field_{N,r,Q}\\), hence \\(#{branch}\\Rightarrow\\Exit(Q;\\Owork)\\).",
      "The terminal branch presents finitely many same-solution alternatives. Each alternative is tested in Pack-first order. A finite disjunction of Pack, Part, and Field losses is still exhausted by the CM witness tree, so every alternative gives the same class-exit conclusion."
    ]
  when :inherited
    [
      "\\(#{branch}\\) introduces no independent terminal alternative outside the installed Pack/Part/Field exhaustion.",
      "The branch carries already established CM content. Its mathematical force is inherited from the terminal packet capture and face-exhaustion theorems. Since it supplies no new selected nonsmooth packet, it contributes no extra continuation service and no fourth branch."
    ]
  else
    [
      "\\(#{branch}\\) has no CM conclusion until it selects a same-fluid terminal packet.",
      "A support branch can strengthen the positive pass side, sharpen a pressure test, or prepare a later terminal witness. It cannot assert \\(\\Member(Q;\\Owork)\\) or \\(\\Exit(Q;\\Owork)\\) by itself. Its proof role is to feed a later Pack, Part, Field, membership-readout, or no-third-branch hinge."
    ]
  end
end

def support_role(entry)
  classes = Array(entry["demotion_classes"]).map(&:to_s)
  return :comparison if classes.any? { |klass| klass.include?("transfer") || klass.include?("euler") || klass.include?("comparison") }
  return :readout if classes.any? { |klass| klass.include?("receiver") || klass.include?("readout") || klass.include?("endpoint") }
  return :positive_supplier if classes.any? { |klass| klass.include?("supplier") || klass.include?("positive") }
  return :downstream if classes.any? { |klass| klass.include?("downstream") || klass.include?("legacy") }

  :support_boundary
end

def support_claim_and_proof(index, role)
  support = "S_{#{index}}"
  case role
  when :comparison
    [
      "\\(#{support}\\) enters the Navier--Stokes class proof only after it selects an exact same-fluid Navier--Stokes packet.",
      "Comparison information may locate an analogous obstruction or exclude a misleading branch shape. The CM proof still acts on the Navier--Stokes packet itself. Once that packet is selected, the same Pack, Part, and Field decision tree applies; before selection, the comparison statement remains hinge support."
    ]
  when :readout
    [
      "\\(#{support}\\) has proof force through membership readout or through a Field-face loss.",
      "A readout statement is downstream of the carrier and participation services. When the readout remains bounded on a positive scale, it supports the pass-side continuation norm. When every positive-scale readout fails, it supplies \\(\\forall r>0\\,\\neg\\Field_{N,r,Q}\\) and the fail side exits the class."
    ]
  when :positive_supplier
    [
      "\\(#{support}\\) strengthens the pass branch or selects the fail branch that the CM test later consumes.",
      "A positive supplier estimate can pay a source term, preserve a packet, or narrow the terminal pressure. The CM proof uses that work at the hinge where the branch becomes a selected same-solution packet. After selection, failure is decided by Pack, Part, or Field."
    ]
  when :downstream
    [
      "\\(#{support}\\) contributes only through a named proof hinge: terminal packet capture, membership readout, class exit, or no-third-branch exclusion.",
      "A downstream statement carries no separate continuation service. Its mathematical value is measured by whether it verifies one of the hinges already used by the proof spine. If it does, the hinge supplies the proof force; if it does not, it remains outside the terminal branch law."
    ]
  else
    [
      "\\(#{support}\\) is admissible as support only after it names the service face it affects.",
      "The working class object has exactly three services before membership readout: carrier, participation, and field. A support statement that names none of them supplies no terminal class conclusion. Once it names one, the corresponding Pack/Part/Field proof pattern decides its role."
    ]
  end
end

FAMILY_EXPANSIONS = {
  "basac_pressure_zeno_source_residue_family" => [
    "Source-reserve family",
    "This branch family is tested by source survival, zero-radius refinement, signed-current/no-free-sink pressure, retained amplitude, and terminal atom mechanisms.",
    "The proof first asks whether a positive same-fluid packet carries the source residue. Carrier loss gives \\(\\neg\\Pack_Q\\). A surviving carrier then asks whether the pressure-viscosity tower remains the same; failure gives \\(\\neg\\Part_{N,Q}\\). Surviving participation finally asks for a positive-scale coherent field readout; failure at every scale gives the Field face."
  ],
  "late_l3_duhamel_translator_notes" => [
    "Local translator family",
    "This family tests local critical translation as a same-solution packet question.",
    "The translator has proof force only when it preserves the same Navier--Stokes pressure-viscosity participation on the transported packet. Loss of that participation is a Part-side failure; a surviving translator then moves to Field readout."
  ],
  "late_cm_direction_or_same_ledger_notes" => [
    "Same-ledger family",
    "This family asks whether the terminal branch is still charged to the same witness record.",
    "A terminal item on the same ledger enters the Pack-first test. A preterminal reflection or unpaid imported branch has no member conclusion until it supplies the same witness record, the same carrier, and the same participation tower."
  ],
  "cm_class_law_completion_and_adversarial_audits" => [
    "Class-law family",
    "This family tests the pass-or-exit law against possible reopening branches.",
    "A reopening branch must either be an in-class nonsmooth third branch or break terminal CM entry, finite Pack/Part/Field exhaustion, or class-exit embedding. Every other challenge is absorbed by the installed pass branch, fail branch, or no-third-branch law."
  ],
  "local_energy_elliptic_formalization_support" => [
    "Local energy and elliptic family",
    "This family supplies analytic support for source-wall and classification tests.",
    "Local energy and elliptic control matter when they select the terminal packet, verify pressure participation, or read out a positive field scale. The support is then consumed by Pack, Part, Field, or membership readout."
  ],
  "euler_mirror_current_exclusions" => [
    "Comparison-boundary family",
    "This family marks comparison branches that need an exact Navier--Stokes packet before entering the CM proof.",
    "The comparison may reveal a useful branch shape. The proof uses it only after the Navier--Stokes witness record, carrier, participation, and field readout are stated for the same solution."
  ],
  "current_theorem_creation_candidate_notes" => [
    "Candidate-branch family",
    "This family contains candidate pressure tests and route probes.",
    "A candidate becomes proof material only when it names a terminal packet and a service face. The face then routes through Pack, Part, Field, membership readout, terminal capture, or no-third-branch exclusion."
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

now = Time.now.utc.iso8601
certificate = load_yaml(CERTIFICATE_PATH)
quarantine = load_yaml(QUARANTINE_PATH)
coverage = load_yaml(COVERAGE_PATH)

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
  "purpose" => "Keep every relevant Navier-Stokes proof surface in an internal derivation inventory while the Clay-facing PDF receives only mathematical branch arguments.",
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
      "cm_face_breaks" => Array(entry["cm_face_breaks"]),
      "proof_statement" => entry["proof_statement"],
      "proof_explanation" => entry["proof_explanation"]
    }
  end,
  "forward_positive_quarantine_rows" => quarantine_entries.map.with_index(1) do |entry, index|
    {
      "index" => index,
      "path" => entry["path"],
      "surface_scope" => entry["surface_scope"],
      "demotion_classes" => Array(entry["demotion_classes"]),
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
tex << "\\section{Expanded CM Branch Obligations}"
tex << ""
tex << "This appendix expands the source field into class-membership obligations. Each numbered obligation names the terminal mechanism, the CM service being tested, and the proof role it plays in the pass-or-exit engine. The full source inventory is kept outside the reader-facing paper."
tex << ""

certificate_groups = certificate_entries.group_by do |entry|
  [
    entry["proof_rule"].to_s,
    face_role(entry),
    entry["face_sort"].to_s,
    entry["selected_failure_type"].to_s,
    Array(entry["cm_face_breaks"]).map(&:to_s).sort
  ]
end

cm_counter = 0
certificate_groups.sort_by { |key, rows| [key[1].to_s, key[0], key[2], key[3], key[4].join(":"), rows.length] }.each_with_index do |((rule, role, face_sort, failure_type, faces), rows), group_index|
  tex << "\\subsection{CM family #{group_index + 1}: #{latex_escape(cm_role_phrase(role))}}"
  tex << "This family accounts for #{rows.length} branch obligation#{rows.length == 1 ? '' : 's'}. Its proof rule is #{latex_escape(cm_rule_phrase(rule))}; its terminal mechanism is #{prose_label(failure_type)}; its tested service is #{faces_tex(faces)}. The branch is read as #{prose_label(face_sort)}."
  tex << ""
  rows.each do |entry|
    cm_counter += 1
    claim, proof = cm_claim_and_proof(cm_counter, face_role(entry))
    tex << "\\paragraph{CM obligation #{cm_counter}.}"
    tex << "The selected terminal mechanism is #{prose_label(entry["selected_failure_type"])}. The tested service is #{faces_tex(entry["cm_face_breaks"])}. The proof rule is #{latex_escape(cm_rule_phrase(entry["proof_rule"]))}. \\emph{Claim.} #{claim} \\emph{Proof.} #{proof}"
    tex << ""
  end
end

tex << ""

tex << "\\section{Expanded Forward-Support Obligations}"
tex << ""
tex << "Forward-positive material enters the paper only after it is rewritten as support for a class-membership hinge. Each obligation below records the support role without letting forward progress substitute for the CM conclusion."
tex << ""

support_groups = quarantine_entries.group_by do |entry|
  [
    support_role(entry),
    Array(entry["demotion_classes"]).map(&:to_s).sort
  ]
end

support_counter = 0
support_groups.sort_by { |key, rows| [key[0].to_s, key[1].join(":"), rows.length] }.each_with_index do |((role, classes), rows), group_index|
  tex << "\\subsection{Support family #{group_index + 1}: #{latex_escape(support_class_phrase(classes))}}"
  tex << "This family accounts for #{rows.length} support obligation#{rows.length == 1 ? '' : 's'}. Its role is #{latex_escape(support_class_phrase(classes))}; it may support a CM hinge only through a Pack-first admission, a receiver/readout bridge, or a same-branch transfer license."
  tex << ""
  rows.each do |entry|
    support_counter += 1
    claim, proof = support_claim_and_proof(support_counter, support_role(entry))
    tex << "\\paragraph{Support obligation #{support_counter}.}"
    tex << "The support type is #{latex_escape(support_class_phrase(entry["demotion_classes"]))}. \\emph{Claim.} #{claim} \\emph{Proof.} #{proof}"
    tex << ""
  end
end

tex << ""

tex << "\\section{Expanded Branch-Family Obligations}"
tex << ""
tex << "The current-material coverage families are represented by mathematical proof roles rather than file names. Repetition is by branch family, so the visible appendix shows the obligation being carried instead of repeating the same anonymous sentence for every source item."
tex << ""

family_expansions(coverage_families).each_with_index do |(title, total, _representation, claim, proof), index|
  tex << "\\paragraph{Branch-family obligation #{index + 1}.}"
  tex << "\\emph{#{latex_escape(title)}.} This family accounts for #{total} current obligation#{total == 1 ? '' : 's'}. #{claim} \\emph{Proof.} #{proof}"
  tex << ""
end

appendix_text = "#{tex.join("\n").rstrip}\n"

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

write_yaml(INVENTORY_PATH, inventory)
APPENDIX_PATH.write(appendix_text)
puts "SURFACE_DERIVATION_APPENDIX certificates=#{certificate_entries.length} quarantine=#{quarantine_entries.length} current_material=#{coverage_families.sum { |family| Array(family["files"]).length }} mathematical_expansions=#{certificate_entries.length + quarantine_entries.length + family_expansions(coverage_families).length}"
