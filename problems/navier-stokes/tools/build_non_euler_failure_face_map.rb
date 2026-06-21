#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"
require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
NS_ROOT = ROOT.join("problems/navier-stokes")
INDEX_PATH = NS_ROOT.join("non-euler-surface-face-sweep-index-20260514.yaml")
OUT_PATH = NS_ROOT.join("non-euler-failure-face-diagnostic-map-20260514.yaml")

FACE_RULES = {
  "Pack_or_Pack_bridge" => {
    "diagnostic_status" => "face_landing",
    "selected_failure_type" => "carrier, cover, packing, retained packet admission, or Pack bridge failure",
    "cm_part_field_question_breaks" => ["Pack_Q"],
    "retention_rule" => "No Pack retention is assumed. This row is itself a Pack-exit diagnostic."
  },
  "Part_or_Part_bridge" => {
    "diagnostic_status" => "face_landing",
    "selected_failure_type" => "same-PDE participation, no-drop, pressure-viscosity tether, envelope, or Part bridge failure",
    "cm_part_field_question_breaks" => ["Part_{N,Q}"],
    "retention_rule" => "No Part retention is assumed. This row is itself a Part-exit diagnostic."
  },
  "Field_or_Field_readout_support" => {
    "diagnostic_status" => "face_landing",
    "selected_failure_type" => "one-field coherence, receiver, finite-difference, Field readout, or endpoint Field failure",
    "cm_part_field_question_breaks" => ["Field_{N,r,Q}"],
    "retention_rule" => "Pack and Part are not kept alive globally; they are local inherited hypotheses only after this surface's Pack/Part alternatives are removed."
  },
  "source_wall_Field_diagnostic_or_supplier" => {
    "diagnostic_status" => "selected_failure_field_landing",
    "selected_failure_type" => "terminal source-wall, source-reserve, source-pulse, square-source, or active-window failure",
    "cm_part_field_question_breaks" => ["Field_{N,r,Q}"],
    "retention_rule" => "Field landing applies to the selected retained branch after legal-loss, readout-loss, non-selected, Pack, and Part alternatives are removed; the positive supplier theorem remains separate."
  },
  "Zeno_Field_diagnostic_or_supplier" => {
    "diagnostic_status" => "selected_failure_field_landing",
    "selected_failure_type" => "Zeno terminal atom, zero heat-time residue, or terminal source-residue failure",
    "cm_part_field_question_breaks" => ["Field_{N,r,Q}"],
    "retention_rule" => "A Zeno atom is not a fourth face. Once selected and retained, it is a Field source-residue exit."
  },
  "typed_subset_Pack_Part_Field_Zeno" => {
    "diagnostic_status" => "typed_subset_landing",
    "selected_failure_type" => "branch-local first failure routed by the surface's trichotomy or boundary lemma",
    "cm_part_field_question_breaks" => ["Pack_Q", "Part_{N,Q}", "Field_{N,r,Q}"],
    "retention_rule" => "This row does not choose one face globally. The local branch chooses Part and Field, or a Zeno atom that then lands in Field."
  },
  "supplier_readout_support" => {
    "diagnostic_status" => "support_quarantine",
    "selected_failure_type" => "supplier/readout claim without independent CM steering authority",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "No Part/Field break is promoted unless a named theorem lands this support surface in a face."
  },
  "downstream_export_support" => {
    "diagnostic_status" => "support_quarantine",
    "selected_failure_type" => "downstream export or readout consumer",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "Export/readout surfaces inherit the face gate; they do not create a CM exit."
  },
  "governance_surface_carries_face_sweep" => {
    "diagnostic_status" => "authority_carrier",
    "selected_failure_type" => "authority or generated carrier for the installed face-sweep boundary",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "This surface carries or propagates the gate; it is not an independent failure source."
  },
  "source_recovery_or_history_not_face" => {
    "diagnostic_status" => "support_quarantine",
    "selected_failure_type" => "source recovery or history context",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "History can supply provenance, not a CM Part/Field, until a theorem promotes it."
  },
  "history_audit_context_support" => {
    "diagnostic_status" => "support_quarantine",
    "selected_failure_type" => "history, audit, or context support",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "Audit/context support stays quarantined unless promoted through Part or Field."
  },
  "manuscript_export_not_face" => {
    "diagnostic_status" => "support_quarantine",
    "selected_failure_type" => "manuscript or export presentation",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "Manuscript/export text is a consumer of theorem authority, not a CM failure face."
  },
  "runtime_governance_not_face" => {
    "diagnostic_status" => "support_quarantine",
    "selected_failure_type" => "runtime or governance surface",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "Runtime/governance state can preserve routing, not prove a face."
  },
  "generated_submission_copy" => {
    "diagnostic_status" => "authority_carrier",
    "selected_failure_type" => "generated submission copy of authority text",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "Generated copies inherit theorem authority; they do not create independent faces."
  },
  "copy_of_authority_or_export_support" => {
    "diagnostic_status" => "authority_carrier",
    "selected_failure_type" => "copy of an authority or export support surface",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "Copies inherit the gate from their source surface."
  },
  "support_context_needs_no_face_promotion" => {
    "diagnostic_status" => "support_quarantine",
    "selected_failure_type" => "root support or context surface",
    "cm_part_field_question_breaks" => [],
    "retention_rule" => "No CM Part/Field is promoted without a named landing theorem."
  }
}.freeze

def summarize_entry(entry)
  face_sort = entry.fetch("face_sort")
  rule = FACE_RULES.fetch(face_sort)
  path = entry.fetch("path")
  selected_failure_type = rule.fetch("selected_failure_type")

  if path.downcase.include?("zeno")
    selected_failure_type = "Zeno or zero heat-time source-residue failure routed by the row's face-sort rule"
  elsif path.downcase.include?("carleson") || path.downcase.include?("sourcewall") || path.downcase.include?("source-wall")
    selected_failure_type = "source-wall / Carleson-type retained terminal source failure routed by the row's face-sort rule"
  elsif path.downcase.include?("field") || path.downcase.include?("one-field")
    selected_failure_type = "one-field coherence or Field readout failure routed by the row's face-sort rule"
  elsif path.downcase.include?("part") || path.downcase.include?("participation") || path.downcase.include?("nodrop")
    selected_failure_type = "participation, no-drop, or Part-envelope failure routed by the row's face-sort rule"
  elsif path.downcase.include?("pack") || path.downcase.include?("carrier") || path.downcase.include?("cover")
    selected_failure_type = "carrier, cover, or Pack-gauge failure routed by the row's face-sort rule"
  end

  entry.merge(
    "failure_face_diagnostic" => {
      "diagnostic_status" => rule.fetch("diagnostic_status"),
      "selected_failure_type" => selected_failure_type,
      "cm_part_field_question_breaks" => rule.fetch("cm_part_field_question_breaks"),
      "retention_rule" => rule.fetch("retention_rule")
    }
  )
end

index = YAML.load_file(INDEX_PATH.to_s)
entries = index.fetch("entries")
mapped_entries = entries.map { |entry| summarize_entry(entry) }

status_counts = Hash.new(0)
face_counts = Hash.new(0)
mapped_entries.each do |entry|
  diagnostic = entry.fetch("failure_face_diagnostic")
  status_counts[diagnostic.fetch("diagnostic_status")] += 1
  breaks = diagnostic.fetch("cm_part_field_question_breaks")
  if breaks.empty?
    face_counts["no_independent_face"] += 1
  else
    breaks.each { |face| face_counts[face] += 1 }
  end
end

output = {
  "version" => 1,
  "artifact_id" => "non-euler-ns-failure-face-diagnostic-map-20260514",
  "based_on" => INDEX_PATH.relative_path_from(NS_ROOT).to_s,
  "theorem" => "AllNonEulerNSFailureFaceDiagnostic.A",
  "claim_boundary" => {
    "row_level_only" => "This map sorts selected failures for CM contrapositive use; it does not prove OriginalSmoothData=>any positive supplier theorem.",
    "cm_part_field_questions_only" => "The only CM witnesses are Part_{N,Q} and Field_{N,r,Q}; Pack_Q only as Field window evidence; source-wall and readout notes are support unless the selected retained branch lands in one of those faces.",
    "euler_mirror_quarantine" => "Euler-mirror, fixed-nu Euler-to-NS transfer, and Euler-class comparison surfaces stay outside this non-Euler Navier-Stokes pass."
  },
  "method" => {
    "rule" => "For each non-Euler NS surface, keep the CM participation-field record fixed, identify the selected failure type, and record which Part/Field face that failure can break.",
    "no_global_pack_part_retention" => "Pack and Part are not kept alive by default. They are retained only locally when the surface's own Pack/Part alternatives have been discharged or inherited from a selected branch.",
    "zeno_rule" => "Zeno is not a fourth face; a selected retained Zeno atom lands in Field.",
    "support_rule" => "Supplier, readout, export, manuscript, generated, source-history, runtime, and governance surfaces are quarantined unless a named theorem promotes them into Part or Field; Member is reached only after the triadic CM witness."
  },
  "scope" => {
    "included_non_euler_text_surfaces" => index.dig("scope", "included_count"),
    "excluded_euler_related_surfaces" => index.dig("scope", "excluded_euler_related_count")
  },
  "diagnostic_status_counts" => status_counts.sort.to_h,
  "cm_part_field_question_break_counts" => face_counts.sort.to_h,
  "entries" => mapped_entries
}
output["recent_update"] = index.fetch("recent_update") if index.key?("recent_update")

OUT_PATH.write(output.to_yaml)
puts "wrote #{OUT_PATH.relative_path_from(ROOT)}"
puts "entries=#{mapped_entries.length}"
