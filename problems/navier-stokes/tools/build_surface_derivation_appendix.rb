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

def latex_breakable(value)
  escaped = latex_escape(value)
  escaped = escaped.gsub(/([[:lower:]])([[:upper:]])/, "\\1\\\\allowbreak{}\\2")
  escaped
    .gsub("/", "/\\allowbreak{}")
    .gsub("-", "-\\allowbreak{}")
    .gsub("\\_", "\\_\\allowbreak{}")
    .gsub(".", ".\\allowbreak{}")
    .gsub("(", "(\\allowbreak{}")
    .gsub(")", ")\\allowbreak{}")
    .gsub(",", ",\\allowbreak{}")
    .gsub(";", ";\\allowbreak{}")
    .gsub(":", ":\\allowbreak{}")
    .gsub("=", "=\\allowbreak{}")
    .gsub("+", "+\\allowbreak{}")
end

def latex_path(path)
  "\\texttt{#{latex_breakable(path.to_s.tr("|", "/"))}}"
end

def sorted_hash(hash)
  hash.to_h.sort.to_h
end

def demotion_summary(entry)
  classes = Array(entry["demotion_classes"])
  classes.empty? ? "none" : classes.join(", ")
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
    "current_material_families" => coverage_families.map { |family| { "id" => family["id"], "file_count" => family["file_count"] } }
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

write_yaml(INVENTORY_PATH, inventory)

tex = []
tex << "% Generated by problems/navier-stokes/tools/build_surface_derivation_appendix.rb"
tex << "% Internal derivation inventory marker only."
tex << "% The Clay-facing PDF must not input this file."
tex << "% The full surface inventory is written to submission-bundle/surface-derivation-inventory.yaml."
tex << "% Certificate rows: #{certificate_entries.length}."
tex << "% Forward-positive quarantine rows: #{quarantine_entries.length}."
tex << "% Current-material family rows: #{coverage_families.sum { |family| Array(family["files"]).length }}."

APPENDIX_PATH.write(tex.join("\n") + "\n")
puts "SURFACE_DERIVATION_APPENDIX certificates=#{certificate_entries.length} quarantine=#{quarantine_entries.length} current_material=#{coverage_families.sum { |family| Array(family["files"]).length }}"
