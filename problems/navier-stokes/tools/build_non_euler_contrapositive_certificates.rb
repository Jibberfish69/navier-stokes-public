#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"
require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
NS_ROOT = ROOT.join("problems/navier-stokes")
MAP_PATH = NS_ROOT.join("non-euler-failure-face-diagnostic-map-20260514.yaml")
OUT_PATH = NS_ROOT.join("non-euler-cm-contrapositive-proof-certificates-20260514.yaml")

EXIT_RULES = {
  "face_landing" => {
    "contrapositive_status" => "proved_cm_exit",
    "proof_rule" => "direct_face_failure",
    "statement_template" => "SelectedFailure(surface) implies the negation of the listed CM face; since CM is Pack+Part+Field, that selected failure is a CM exit witness."
  },
  "selected_failure_field_landing" => {
    "contrapositive_status" => "proved_cm_exit",
    "proof_rule" => "selected_retained_field_failure",
    "statement_template" => "After this surface's legal-loss, readout-loss, non-selected, Pack, and Part alternatives are removed or inherited on the selected branch, the retained failure implies not Field_{N,r,Q}; hence it is a CM exit witness."
  },
  "typed_subset_landing" => {
    "contrapositive_status" => "proved_cm_exit",
    "proof_rule" => "finite_face_disjunction",
    "statement_template" => "The surface's selected failure lies in its declared finite subset of Pack/Part/Field/Zeno channels. After the Pack-before-Part audit, any Zeno or zero-heat-time source-residue branch is Part-first when the same original-NS pointwise participation record remains, true not Pack_Q only when that record/carrier/readout is absent, and Field only after a retained positive-window readout is separately licensed."
  },
  "support_quarantine" => {
    "contrapositive_status" => "proved_unlicensed_for_cm_contrapositive",
    "proof_rule" => "no_selected_cm_failure_without_bridge",
    "statement_template" => "This surface has no licensed selected CM failure. It cannot be used in the contrapositive proof until a named theorem promotes its content into Pack, Part, or Field; Member is reached only after the triadic CM witness."
  },
  "authority_carrier" => {
    "contrapositive_status" => "proved_inherited_no_new_face",
    "proof_rule" => "authority_inheritance_no_independent_failure",
    "statement_template" => "This surface is an authority/generated carrier. It inherits the installed CM gate and creates no independent selected failure."
  }
}.freeze

def certificate_for(entry)
  diagnostic = entry.fetch("failure_face_diagnostic")
  status = diagnostic.fetch("diagnostic_status")
  rule = EXIT_RULES.fetch(status)
  breaks = diagnostic.fetch("cm_face_breaks")

  statement =
    case status
    when "face_landing"
      "SelectedFailure(#{entry.fetch("path")}) => not #{breaks.join(" and not ")}."
    when "selected_failure_field_landing"
      "SelectedRetainedFailure(#{entry.fetch("path")}) => not Field_{N,r,Q}."
    when "typed_subset_landing"
      "SelectedFailure(#{entry.fetch("path")}) => (not Pack_Q or not Part_{N,Q} or not Field_{N,r,Q})."
    when "support_quarantine"
      "NoLicensedCMFailure(#{entry.fetch("path")}) until promoted by a named Pack/Part/Field bridge."
    when "authority_carrier"
      "NoNewFailure(#{entry.fetch("path")}); theorem content is inherited from cited authority."
    end

  {
    "path" => entry.fetch("path"),
    "face_sort" => entry.fetch("face_sort"),
    "diagnostic_status" => status,
    "contrapositive_status" => rule.fetch("contrapositive_status"),
    "proof_rule" => rule.fetch("proof_rule"),
    "selected_failure_type" => diagnostic.fetch("selected_failure_type"),
    "cm_face_breaks" => breaks,
    "proof_statement" => statement,
    "proof_explanation" => if status == "face_landing" && breaks.include?("Pack_Q")
      "SelectedFailure(surface) negates Pack_Q only through the row's selected Pack mechanism: #{diagnostic.fetch("selected_failure_type")}. This is a carrier/window/readout/admission failure, not a pre-Pack disposal of the original NS participation law; any singular or source-residue branch with a same-solution pointwise record must be audited under Part first."
    else
      rule.fetch("statement_template")
    end
  }
end

map = YAML.load_file(MAP_PATH.to_s)
entries = map.fetch("entries")
certificates = entries.map { |entry| certificate_for(entry) }

status_counts = Hash.new(0)
rule_counts = Hash.new(0)
certificates.each do |certificate|
  status_counts[certificate.fetch("contrapositive_status")] += 1
  rule_counts[certificate.fetch("proof_rule")] += 1
end

exit_count = certificates.count { |certificate| certificate.fetch("contrapositive_status") == "proved_cm_exit" }
barred_count = certificates.length - exit_count

output = {
  "version" => 1,
  "artifact_id" => "non-euler-cm-contrapositive-proof-certificates-20260514",
  "based_on" => MAP_PATH.relative_path_from(NS_ROOT).to_s,
  "theorem" => "AllNonEulerCMContrapositiveClosure.A",
  "scope" => map.fetch("scope"),
  "claim" => {
    "statement" => "Every indexed non-Euler Navier-Stokes row is certificate-classified for the CM contrapositive program: its selected failure proves a Pack/Part/Field exit, or the row is barred as a CM theorem source until promoted by a named bridge.",
    "cm_packet" => "CM_{N,r,Q}=Pack_Q + Part_{N,Q} + Field_{N,r,Q}",
    "no_global_pack_part_retention" => map.fetch("method").fetch("no_global_pack_part_retention"),
    "zeno_rule" => map.fetch("method").fetch("zeno_rule"),
    "pack_before_part_certificate_rule" => "A certificate row may state not Pack_Q only when its selected_failure_type names a Pack mechanism such as carrier, cover, packing, retained packet admission, Pack bridge, same-fluid carrier, donor-refill, detached ancestry, no-carrier, or unbounded distortion. Zero-radius, Zeno, BASAC, or source-residue rows with same original-NS pointwise participation must be typed under Part first.",
    "does_not_prove" => "This certificate ledger does not prove OriginalSmoothData=>any positive supplier theorem, Euler regularity claim, or fixed-nu Euler-to-NS transfer claim."
  },
  "claim_boundary" => map.fetch("claim_boundary"),
  "contrapositive_status_counts" => status_counts.sort.to_h,
  "proof_rule_counts" => rule_counts.sort.to_h,
  "exit_certificate_count" => exit_count,
  "barred_or_inherited_count" => barred_count,
  "certificates" => certificates
}
output["recent_update"] = map.fetch("recent_update") if map.key?("recent_update")

OUT_PATH.write(output.to_yaml)
puts "wrote #{OUT_PATH.relative_path_from(ROOT)}"
puts "certificates=#{certificates.length}"
puts "exit_certificates=#{exit_count}"
puts "barred_or_inherited=#{barred_count}"
