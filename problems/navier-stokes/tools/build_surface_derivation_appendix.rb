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
  return "no independent Part/Field face" if listed.empty?

  listed.map { |face| face_tex(face) }.uniq.join(", ")
end

def cm_role_phrase(role)
  {
    pack: "carrier-window support obligations",
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
  return :pack if face_breaks.any? { |face| face.include?("Pack") }
  return :part if face_breaks.any? { |face| face.include?("Part") }
  return :field if face_breaks.any? { |face| face.include?("Field") }
  return :field if rule == "selected_retained_field_failure"

  :support_boundary
end

def cm_claim_and_proof(label, role)
  branch = label
  case role
  when :pack
    [
      "#{branch} gives \\(\\neg\\Pack_Q\\), hence \\(\\Exit(Q;\\Owork)\\).",
      "A member branch must first carry \\(Q\\) by a positive same-fluid packet. The selected terminal branch loses that carrier requirement before any participation or field readout can be asked of it. The Pack-out-of-CM audited order therefore gives \\(\\neg\\Pack_Q\\), and the class-exit embedding gives \\(\\Exit(Q;\\Owork)\\).",
      "On the page, this tells the reader that the branch never reaches the later questions. The proof is not claiming a new smooth solution; it is recording that the alleged terminal branch cannot even supply the packet that would let membership be tested. That is why the branch belongs on the fail side of the pass-or-exit split."
    ]
  when :part
    [
      "#{branch} keeps the carrier but gives \\(\\neg\\Part_{N,Q}\\), hence \\(\\Exit(Q;\\Owork)\\).",
      "Here the carrier question has already passed for the purpose of the split. The branch still has to participate in the same pressure-viscosity tower as the original Navier--Stokes solution. The selected failure breaks that tower, so the first surviving lost requirement is \\(\\Part_{N,Q}\\). The Part/Field failure embeds as class exit.",
      "The reader-facing point is that this is a same-solution participation test. The same-fluid carrier is still present. The branch no longer participates in the Navier--Stokes pressure-viscosity tower that the member branch needs. The obligation therefore closes by loss of participation."
    ]
  when :field
    [
      "#{branch} keeps carrier and participation but gives \\(\\forall r>0\\,\\neg\\Field_{N,r,Q}\\), hence \\(\\Exit(Q;\\Owork)\\).",
      "This branch is read after carrier and participation have survived for the case split. The remaining continuation requirement is a positive-scale coherent field readout. The terminal branch has no such scale at any \\(r>0\\), so the Field face fails and the failure embeds as \\(\\Exit(Q;\\Owork)\\).",
      "This is the last face of the witness tree, so the page has to make the order visible. The branch has already survived the packet and participation questions; what remains is the absence of any positive scale on which the field can be read coherently. The conclusion is Field-face exit, not a generic statement that the solution looks bad."
    ]
  when :finite_disjunction
    [
      "#{branch} gives a finite disjunction of Part and Field losses, hence \\(\\Exit(Q;\\Owork)\\).",
      "The terminal branch presents finitely many same-solution alternatives. Each alternative is tested in Pack-out-of-CM audited order. A finite disjunction of Part and Field losses is still exhausted by the CM witness tree, so every alternative gives the same class-exit conclusion.",
      "This keeps the reader from seeing the alternatives as an open cloud of cases. There are only finitely many branch options here, and each option pays one of the same three witness costs. Once the finite list is exhausted, there is no remaining terminal branch outside the pass-or-exit law."
    ]
  when :inherited
    [
      "#{branch} introduces no independent terminal alternative outside the installed Part/Field exhaustion.",
      "The branch carries already established CM content. Its mathematical force is inherited from the terminal packet capture and face-exhaustion theorems. Since it supplies no new selected nonsmooth packet, it contributes no extra continuation requirement and no fourth branch.",
      "For the reader, the point is restraint. This entry explains why already-paid proof work is not being reread as a new terminal branch. It belongs in the manuscript because it preserves the closed branch count and prevents a hidden fourth alternative from being smuggled back into the argument."
    ]
  else
    [
      "#{branch} has no CM conclusion until it selects a same-fluid terminal packet.",
      "A support branch can strengthen the positive pass side, sharpen a pressure test, or prepare a later terminal witness. It cannot assert \\(\\Member(Q;\\Owork)\\) or \\(\\Exit(Q;\\Owork)\\) by itself. Its proof role is to feed a later Part and Field, membership-readout, or no-third-branch hinge.",
      "This is included so the reader can see the boundary of the proof claim. The material may be useful, but it has not yet selected the same-fluid terminal packet that the CM test consumes. Until that selection is made, the branch remains support for the argument rather than an independent class conclusion."
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
      "#{support} enters the Navier--Stokes class proof only after it selects an exact same-fluid Navier--Stokes packet.",
      "Comparison information may locate an analogous obstruction or exclude a misleading branch shape. The CM proof still acts on the Navier--Stokes packet itself. Once that packet is selected, the same Part and Field decision tree applies; before selection, the comparison statement remains hinge support.",
      "The reader-facing role is to keep comparison from becoming authority by accident. The comparison can show why a branch is worth testing, but the Clay-facing proof is charged to the Navier--Stokes packet and its own witnesses. This paragraph therefore marks the exact point where comparison stops and same-fluid proof begins."
    ]
  when :readout
    [
      "#{support} has proof force through membership readout or through a Field-face loss.",
      "A readout statement is downstream of the carrier and participation requirements. When the readout remains bounded on a positive scale, it supports the pass-side continuation norm. When every positive-scale readout fails, it supplies \\(\\forall r>0\\,\\neg\\Field_{N,r,Q}\\) and the fail side exits the class.",
      "This tells the reader how to read endpoint material without turning it into a separate proof program. A good readout supports the member branch; a failed readout, after carrier and participation have survived, identifies the Field face. The obligation is therefore placed where the paper decides between positive-scale readability and field exit."
    ]
  when :positive_supplier
    [
      "#{support} strengthens the pass branch or selects the fail branch that the CM test later consumes.",
      "A positive supplier estimate can pay a source term, preserve a packet, or narrow the terminal pressure. The CM proof uses that work at the hinge where the branch becomes a selected same-solution packet. After selection, failure is decided by Part or Field.",
      "The reader-facing role is to show why forward estimates are present without letting them replace the contrapositive proof. They can pay costs on the pass side or select the branch that the fail side tests. Once the selected packet is on the page, the CM witness tree carries the final burden."
    ]
  when :downstream
    [
      "#{support} contributes only through a named proof hinge: terminal packet capture, membership readout, class exit, or no-third-branch exclusion.",
      "A downstream statement carries no separate continuation requirement. Its mathematical value is measured by whether it verifies one of the hinges already used by the proof spine. If it does, the hinge supplies the proof force; if it does not, it remains outside the terminal branch law.",
      "This keeps the manuscript from making the reader trust a downstream label as though it were a theorem. The page has to show which hinge is being paid and what that hinge already proves. Anything that does not pay one of those hinges remains outside the terminal proof claim."
    ]
  else
    [
      "#{support} is admissible as support only after it names the witness it affects.",
      "The working class object has exactly three requirements before membership readout: carrier, participation, and field. A support statement that names none of them supplies no terminal class conclusion. Once it names one, the corresponding Part/Field proof pattern decides its role.",
      "The reader-facing role is to keep support material honest. The manuscript can use the material only after it says whether it affects the packet, the participation tower, or the field readout. That named face is what connects the material to the pass-or-exit proof rather than to a vague promise of progress."
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
    "A terminal item on the same ledger enters the Field-certification test. A preterminal reflection or unpaid imported branch has no member conclusion until it supplies the same witness record, the same carrier, and the same participation tower."
  ],
  "cm_class_law_completion_and_adversarial_audits" => [
    "Class-law family",
    "This family tests the pass-or-exit law against possible reopening branches.",
    "A reopening branch must either be an in-class nonsmooth third branch or break terminal CM entry, finite Part/Field exhaustion, or class-exit embedding. Every other challenge is absorbed by the installed pass branch, fail branch, or no-third-branch law."
  ],
  "local_energy_elliptic_formalization_support" => [
    "Local energy and elliptic family",
    "This family supplies analytic support for source-wall and classification tests.",
    "Local energy and elliptic control matter when they select the terminal packet, verify pressure participation, or read out a positive field scale. The support is then consumed by Part and Field, or membership readout."
  ],
  "euler_mirror_current_exclusions" => [
    "Comparison-boundary family",
    "This family marks comparison branches that need an exact Navier--Stokes packet before entering the CM proof.",
    "The comparison may reveal a useful branch shape. The proof uses it only after the Navier--Stokes witness record, carrier, participation, and field readout are stated for the same solution."
  ],
  "current_theorem_creation_candidate_notes" => [
    "Candidate-branch family",
    "This family contains candidate pressure tests and route probes.",
    "A candidate becomes proof material only when it names a terminal packet and a witness. The face then routes through Part and Field, membership readout, terminal capture, or no-third-branch exclusion."
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
    faces.empty? ? "no independent Part/Field face" : faces.sort.join(" and ")
  end
  count_summary(labels, empty: "no independent Part/Field face")
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
tex << "\\section{Expanded CM Branch Obligations}"
tex << ""
tex << "This appendix expands the source field into class-membership obligations. Each numbered obligation names the terminal mechanism, the CM requirement being tested, and the proof role it plays in the pass-or-exit engine. The full source inventory is kept outside the reader-facing paper."
tex << ""

certificate_groups = certificate_entries.group_by { |entry| face_role(entry) }

certificate_groups.sort_by { |role, rows| [role.to_s, -rows.length] }.each_with_index do |(role, rows), group_index|
  tex << "\\subsection{CM proof role #{group_index + 1}: #{latex_escape(cm_role_phrase(role))}}"
  tex << "This proof role accounts for #{rows.length} branch obligation#{rows.length == 1 ? '' : 's'} with one mathematical CM job. The proof rules represented here are #{count_summary(rows.map { |entry| cm_rule_phrase(entry["proof_rule"]) })}. The tested requirements are #{face_summary(rows)}. The terminal mechanisms represented here are #{count_summary(rows.map { |entry| entry["selected_failure_type"] })}."
  tex << ""
  claim, proof, reader_role = cm_claim_and_proof("CM proof role #{group_index + 1}", role)
  tex << "\\paragraph{Family proof role.}"
  tex << "\\emph{Claim.} #{claim}"
  tex << ""
  tex << "\\emph{Proof.} #{proof}"
  tex << ""
  tex << "\\emph{Reader-facing role.} #{reader_role}"
  tex << ""
end

tex << ""

tex << "\\section{Expanded Forward-Support Obligations}"
tex << ""
tex << "Forward-positive material enters the paper only after it is rewritten as support for a class-membership hinge. Each obligation below records the support role without letting forward progress substitute for the CM conclusion."
tex << ""

support_groups = quarantine_entries.group_by { |entry| support_role(entry) }

support_groups.sort_by { |role, rows| [role.to_s, -rows.length] }.each_with_index do |(role, rows), group_index|
  classes = rows.flat_map { |entry| Array(entry["support_classes"] || entry["demotion_classes"]).map(&:to_s) }.uniq.sort
  tex << "\\subsection{Support proof role #{group_index + 1}: #{latex_escape(support_class_heading(classes))}}"
  tex << "This proof role accounts for #{rows.length} support obligation#{rows.length == 1 ? '' : 's'} with one mathematical support job. The support classes represented here are #{count_summary(rows.map { |entry| support_class_phrase(entry["support_classes"] || entry["demotion_classes"]) })}. The support may enter a CM hinge only through a Field-certification admission, a receiver/readout bridge, or a same-branch transfer license."
  tex << ""
  claim, proof, reader_role = support_claim_and_proof("Support proof role #{group_index + 1}", role)
  tex << "\\paragraph{Family proof role.}"
  tex << "\\emph{Claim.} #{claim}"
  tex << ""
  tex << "\\emph{Proof.} #{proof}"
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
  tex << "\\emph{#{latex_escape(title)}.} This family accounts for #{total} current obligation#{total == 1 ? '' : 's'}."
  tex << ""
  tex << claim
  tex << ""
  tex << "\\emph{Proof.} #{proof}"
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
