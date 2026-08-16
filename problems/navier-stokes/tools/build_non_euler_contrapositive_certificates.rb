#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"
require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
NS_ROOT = ROOT.join("problems/navier-stokes")
MAP_PATH = NS_ROOT.join("non-euler-failure-face-diagnostic-map-20260514.yaml")
OUT_PATH = NS_ROOT.join("non-euler-cm-contrapositive-proof-certificates-20260514.yaml")
TARGET_CONTRACT_PATH = NS_ROOT.join("target-operating-contract.yaml")

EXIT_RULES = {
  "face_landing" => {
    "contrapositive_status" => "proved_member_and_vpi_loss_presentation",
    "proof_rule" => "direct_face_failure",
    "statement_template" => "SelectedFailure(surface) negates the listed Part/Field locator, hence not Member(Q), and therefore not VPIParticipation(Q)."
  },
  "selected_failure_field_landing" => {
    "contrapositive_status" => "proved_member_and_vpi_loss_presentation",
    "proof_rule" => "selected_retained_field_failure",
    "statement_template" => "On the same original Navier-Stokes history, the retained terminal Field failure implies not Member(Q) and loss of full VPI participation. It is not a surviving singular participant."
  },
  "typed_subset_landing" => {
    "contrapositive_status" => "proved_member_and_vpi_loss_presentation",
    "proof_rule" => "finite_face_disjunction",
    "statement_template" => "The selected same-history departure is exhausted by Part or Field localization, with Pack only as outside-CM Field-window evidence. Dead, Blown, Jump, and Zeno are presentations of the resulting loss of full VPI participation, not extra terminal branches."
  },
  "vpi_participation_loss_presentation" => {
    "contrapositive_status" => "proved_vpi_participation_loss_presentation",
    "proof_rule" => "outside_cm_field_window_participation_loss",
    "statement_template" => "Carrier/window loss gives not VPIParticipation(Q). Pack remains outside CM and does not by itself assert not Member(Q); any class-exit use must still localize through Part or Field."
  },
  "support_quarantine" => {
    "contrapositive_status" => "proved_unlicensed_for_cm_contrapositive",
    "proof_rule" => "no_selected_cm_failure_without_bridge",
    "statement_template" => "This surface has no licensed real same-history departure. It cannot enter the exhaustive negative inventory until a named bridge identifies loss of full VPI participation and, when class exit is asserted, a Part or Field localization."
  },
  "authority_carrier" => {
    "contrapositive_status" => "proved_inherited_no_new_face",
    "proof_rule" => "authority_inheritance_no_independent_failure",
    "statement_template" => "This surface is an authority/generated carrier. It inherits the installed CM gate and creates no independent selected failure."
  }
}.freeze

def silver_vpi_audit(contract)
  program = Array(contract.fetch("proof_program_topology")).find do |entry|
    entry["program_id"] == "cm-member-class-exit"
  end
  program&.fetch("silver_vpi_contrapositive_audit_20260722")
end

def certificate_for(entry)
  diagnostic = entry.fetch("failure_face_diagnostic")
  pack_window_presentation = entry["face_sort"] == "Pack_or_Pack_bridge"
  status = pack_window_presentation ? "vpi_participation_loss_presentation" : diagnostic.fetch("diagnostic_status")
  rule = EXIT_RULES.fetch(status)
  breaks = pack_window_presentation ? [] : diagnostic.fetch("cm_part_field_question_breaks")

  statement =
    case status
    when "face_landing"
      "SelectedFailure(#{entry.fetch("path")}) => not #{breaks.join(" and not ")}."
    when "selected_failure_field_landing"
      "SelectedRetainedFailure(#{entry.fetch("path")}) => not Field_{N,r,Q}."
    when "typed_subset_landing"
      "SelectedFailure(#{entry.fetch("path")}) => (not Part_{N,Q} or not Field_{N,r,Q})."
    when "vpi_participation_loss_presentation"
      "SelectedCarrierWindowFailure(#{entry.fetch("path")}) => not VPIParticipation(Q); Pack_Q remains outside CM."
    when "support_quarantine"
      "NoLicensedCMFailure(#{entry.fetch("path")}) until promoted by a named Part/Field bridge."
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
    "cm_part_field_question_breaks" => breaks,
    "vpi_consequence" => case status
    when "face_landing", "selected_failure_field_landing", "typed_subset_landing"
      "not Member(Q) => not VPIParticipation(Q)"
    when "vpi_participation_loss_presentation"
      "not VPIParticipation(Q); no independent CM face"
    else
      "none without a same-history departure bridge"
    end,
    "proof_statement" => statement,
    "proof_explanation" => rule.fetch("statement_template")
  }
end

map = YAML.load_file(MAP_PATH.to_s)
contract = YAML.load_file(TARGET_CONTRACT_PATH.to_s)
closure = silver_vpi_audit(contract)
abort "missing canonical Silver VPI contrapositive audit" unless closure
unless closure.fetch("closure_status") == "logical-classification-terminal-participation-retention-unproved"
  abort "canonical Silver classification changed its terminal-retention boundary"
end
entries = map.fetch("entries")
certificates = entries.map { |entry| certificate_for(entry) }

status_counts = Hash.new(0)
rule_counts = Hash.new(0)
certificates.each do |certificate|
  status_counts[certificate.fetch("contrapositive_status")] += 1
  rule_counts[certificate.fetch("proof_rule")] += 1
end

member_exit_count = certificates.count do |certificate|
  certificate.fetch("contrapositive_status") == "proved_member_and_vpi_loss_presentation"
end
vpi_loss_count = certificates.count do |certificate|
  certificate.fetch("contrapositive_status") == "proved_vpi_participation_loss_presentation"
end
negative_certificate_count = member_exit_count + vpi_loss_count
barred_count = certificates.length - negative_certificate_count

output = {
  "version" => 1,
  "artifact_id" => "non-euler-cm-contrapositive-proof-certificates-20260514",
  "based_on" => MAP_PATH.relative_path_from(NS_ROOT).to_s,
  "theorem" => "AllNonEulerVPIParticipationComplementClassification.A",
  "scope" => map.fetch("scope"),
  "canonical_silver_vpi_contrapositive" => closure,
  "claim" => {
    "statement" => "For the one smooth-data, fixed-positive-viscosity, no-reset original Navier-Stokes history, every indexed negative presentation either localizes not Member(Q) through Part or Field, presents loss of full VPI participation with Pack kept outside CM, or is barred until a same-history departure bridge is supplied. Exhaustion supplies not Smooth(Q) => not Member(Q) => not VPIParticipation(Q), whose direct contrapositive is VPIParticipation(Q) => Member(Q) => Smooth(Q).",
    "class_membership_locators" => "Part_{N,Q} or Field_{N,r,Q}; Pack_Q is outside CM and only Field-window evidence",
    "no_global_pack_part_retention" => map.fetch("method").fetch("no_global_pack_part_retention"),
    "zeno_rule" => map.fetch("method").fetch("zeno_rule"),
    "pack_boundary" => "A carrier/window certificate may conclude not VPIParticipation(Q), but it may not treat Pack_Q as a CM face or infer not Member(Q) without Part/Field localization. Zero-radius, Zeno, BASAC, or source-residue rows with the same original-NS participation record are typed through that participation first.",
    "gold_independence" => "No positive supplier theorem, forward terminal theorem, or Gold estimate is required. Gold remains an independent nonblocking research lane.",
    "conditional_euler" => closure.fetch("conditional_euler")
  },
  "claim_boundary" => map.fetch("claim_boundary"),
  "contrapositive_status_counts" => status_counts.sort.to_h,
  "proof_rule_counts" => rule_counts.sort.to_h,
  "member_exit_certificate_count" => member_exit_count,
  "vpi_participation_loss_certificate_count" => vpi_loss_count,
  "negative_certificate_count" => negative_certificate_count,
  "barred_or_inherited_count" => barred_count,
  "certificates" => certificates
}
output["recent_update"] = map.fetch("recent_update") if map.key?("recent_update")

if ARGV.include?("--check")
  abort "legacy proved_cm_exit status resurfaced" if status_counts.key?("proved_cm_exit")
  pack_rows = certificates.select { |entry| entry["face_sort"] == "Pack_or_Pack_bridge" }
  unless pack_rows.all? do |entry|
           entry["contrapositive_status"] == "proved_vpi_participation_loss_presentation" &&
             entry["cm_part_field_question_breaks"] == []
         end
    abort "Pack resurfaced as a CM face in the certificate builder"
  end

  puts "NON_EULER_CONTRAPOSITIVE_CERTIFICATE_CHECK certificates=#{certificates.length}"
  exit 0
end

OUT_PATH.write(output.to_yaml)
puts "wrote #{OUT_PATH.relative_path_from(ROOT)}"
puts "certificates=#{certificates.length}"
puts "member_exit_certificates=#{member_exit_count}"
puts "vpi_participation_loss_certificates=#{vpi_loss_count}"
puts "barred_or_inherited=#{barred_count}"
