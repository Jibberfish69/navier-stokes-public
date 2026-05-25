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
  "purpose" => "Expose every relevant Navier-Stokes proof surface to the PDF as a derivation row or an explicit support/demotion/exclusion row.",
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
tex << "% Do not hand-edit; regenerate after source-surface changes."
tex << "\\appendix"
tex << "\\section{Complete Surface Derivation Appendix}"
tex << "This appendix is the detailed derivation register for the manuscript."
tex << "The main body gives the proof architecture."
tex << "The rows below attach every relevant source record to its exact proof role: class exit, inherited authority, support quarantine, explicit demotion, or current-material representation."
tex << "A row is proof-bearing only when it states a Pack, Part, Field, membership-readout, terminal-capture, or no-genuine-exit contribution."
tex << ""
tex << "\\subsection{Census Summary}"
tex << "\\begin{center}"
tex << "\\small"
tex << "\\begin{tabular}{L{0.44\\linewidth}L{0.44\\linewidth}}"
tex << "\\textbf{Register} & \\textbf{Count}\\\\"
tex << "\\hline"
tex << "Non-Euler CM certificate rows & #{certificate_entries.length}\\\\"
tex << "Forward-positive quarantine rows & #{quarantine_entries.length}\\\\"
tex << "Current-material family rows & #{coverage_families.sum { |family| Array(family["files"]).length }}\\\\"
tex << "\\end{tabular}"
tex << "\\end{center}"
tex << ""
tex << "\\subsection{Non-Euler CM Certificate Derivations}"
tex << "\\begingroup"
tex << "\\scriptsize"
tex << "\\raggedright"
tex << "\\sloppy"
tex << "\\emergencystretch=8em"
certificate_entries.each_with_index do |entry, index|
  tex << "\\par\\medskip\\noindent\\textbf{Certificate #{index + 1}.}"
  tex << "\\par\\noindent\\emph{Surface.} #{latex_path(entry["path"])}"
  tex << "\\par\\noindent\\emph{Proof rule.} #{latex_breakable(entry["proof_rule"])}."
  tex << "\\par\\noindent\\emph{Contrapositive status.} #{latex_breakable(entry["contrapositive_status"])}."
  tex << "\\par\\noindent\\emph{Face sort.} #{latex_breakable(entry["face_sort"])}."
  face_breaks = Array(entry["cm_face_breaks"])
  tex << "\\par\\noindent\\emph{CM face breaks.} #{latex_breakable(face_breaks.empty? ? "none" : face_breaks.join(", "))}."
  tex << "\\par\\noindent\\emph{Selected failure.} #{latex_breakable(entry["selected_failure_type"])}."
  tex << "\\par\\noindent\\emph{Proof statement.} #{latex_breakable(entry["proof_statement"])}"
  tex << "\\par\\noindent\\emph{Proof explanation.} #{latex_breakable(entry["proof_explanation"])}"
end
tex << "\\endgroup"
tex << ""
tex << "\\subsection{Forward-Positive Quarantine Derivations}"
tex << "\\begingroup"
tex << "\\scriptsize"
tex << "\\raggedright"
tex << "\\sloppy"
tex << "\\emergencystretch=8em"
quarantine_entries.each_with_index do |entry, index|
  tex << "\\par\\medskip\\noindent\\textbf{Quarantine row #{index + 1}.}"
  tex << "\\par\\noindent\\emph{Surface.} #{latex_path(entry["path"])}"
  tex << "\\par\\noindent\\emph{Scope.} #{latex_breakable(entry["surface_scope"])}."
  tex << "\\par\\noindent\\emph{Demotion classes.} #{latex_breakable(demotion_summary(entry))}."
  tex << "\\par\\noindent\\emph{CM authority.} #{latex_breakable(entry["cm_authority"])}."
  tex << "\\par\\noindent\\emph{Promotion gate.} #{latex_breakable(entry["promotion_allowed_only_by"])}."
  tex << "\\par\\noindent\\emph{CM-substitute rule.} #{entry["forbidden_as_cm_substitute"] ? "Forbidden as a direct CM substitute." : "No direct substitution ban recorded."}"
end
tex << "\\endgroup"
tex << ""
tex << "\\subsection{Current Material Family Derivations}"
coverage_families.each do |family|
  tex << "\\subsubsection*{#{latex_escape(family["id"])} }"
  tex << latex_breakable(family["paper_representation"])
  tex << "\\begingroup"
  tex << "\\scriptsize"
  tex << "\\raggedright"
  tex << "\\sloppy"
  tex << "\\emergencystretch=8em"
  Array(family["files"]).each_with_index do |file, index|
    tex << "\\par\\noindent\\textbf{Family row #{index + 1}.} #{latex_path(file)}"
  end
  tex << "\\endgroup"
end

APPENDIX_PATH.write(tex.join("\n") + "\n")
puts "SURFACE_DERIVATION_APPENDIX certificates=#{certificate_entries.length} quarantine=#{quarantine_entries.length} current_material=#{coverage_families.sum { |family| Array(family["files"]).length }}"
