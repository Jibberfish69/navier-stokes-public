#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "fileutils"
require "open3"
require "pathname"
require "rbconfig"
require "time"
require "yaml"

require_relative "../../../system/runner/lib/navier_stokes_completion_readiness_support"
require_relative "../../../system/runner/lib/nightly_ns_completion_engine"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
NS_ROOT = ROOT.join("problems/navier-stokes")
BUNDLE_ROOT = NS_ROOT.join("submission-bundle")
RUN_LEDGER = BUNDLE_ROOT.join("pdf-depth-promotion-run.yaml")
CHECK_LEDGER = BUNDLE_ROOT.join("pdf-depth-promotion-check.yaml")
PROBLEM_ID = "navier-stokes"

MAIN_TEX = BUNDLE_ROOT.join("navier-stokes-submission.tex")
CURRENT_MATERIAL = BUNDLE_ROOT.join("current-material-coverage.yaml")
SURFACE_APPENDIX = BUNDLE_ROOT.join("surface-derivation-appendix.tex")
SURFACE_INVENTORY = BUNDLE_ROOT.join("surface-derivation-inventory.yaml")
SOURCE_FIELD_APPENDIX = BUNDLE_ROOT.join("source-field-reader-appendix.tex")
EXPORT_STATUS = BUNDLE_ROOT.join("submission-export-status.yaml")
TARGET_OPERATING_CONTRACT = NS_ROOT.join("target-operating-contract.yaml")

target_contract = YAML.load_file(TARGET_OPERATING_CONTRACT.to_s) || {}
proof_completion = target_contract.fetch("proof_program_completion")
unless proof_completion["status"] == "established-complete" &&
       proof_completion["mpp_status"] == "solved" &&
       proof_completion["producer_status"] == "proved-datum-generated-whole-terminal-compatible-rectangles" &&
       proof_completion["closure_status"] == "proved" &&
       proof_completion["active_direct_boundary"] == "none"
  abort "canonical completed proof-program authority changed"
end
silver_program = Array(target_contract["proof_program_topology"]).find do |entry|
  entry.is_a?(Hash) && entry.key?("silver_vpi_contrapositive_audit_20260722")
end
abort "canonical Silver program missing from #{TARGET_OPERATING_CONTRACT}" unless silver_program

silver_contract = silver_program.fetch("silver_vpi_contrapositive_audit_20260722")
silver_rule = silver_program["silver_vpi_complement_rule"] || silver_program.fetch("silver_one_line_rule_20260722")
gold_lane = target_contract.fetch("open_root_group", {})
gold_burden = gold_lane.fetch("exact_live_theorem_grade_burden", {})
silver_one_line = silver_contract.fetch("one_line")
required_silver_fragments = [
  "not Smooth(Q) => not Member(Q) => not VPIParticipation(Q)",
  "VPIParticipation(Q) => Member(Q) => Smooth(Q)"
]
unless required_silver_fragments.all? { |fragment| silver_one_line.include?(fragment) }
  abort "canonical Silver program no longer contains the VPI complement contrapositive"
end
unless silver_rule.include?("Pack") && silver_rule.include?("outside CM")
  abort "canonical Silver program no longer keeps Pack outside CM"
end
unless silver_contract.fetch("closure_status") == "logical-classification-terminal-participation-retention-unproved"
  abort "canonical Silver classification changed its terminal-retention boundary"
end
unless gold_burden["status"] == "parallel-gold-research-nonblocking" && gold_lane["top_level_release_blocker"] == false
  abort "canonical Gold lane is no longer independent and nonblocking"
end

CURRENT_AUTHORITY_OVERRIDE_20260722 = "The datum-generated compatible-intersection proof is established complete through the common smooth endpoint, pressure-complete jet, same-history restart, uniqueness, and T_*=infinity. Silver remains a valid downstream VPI failure classification. Export artifacts do not change mathematical proof status.".freeze
CURRENT_SILVER_AUTHORITY_20260722 = {
  "status" => "downstream-logical-classification-not-required-for-direct-closure",
  "classification_status" => silver_contract.fetch("closure_status"),
  "mathematical_status" => proof_completion.fetch("status"),
  "mpp_status" => proof_completion.fetch("mpp_status"),
  "active_direct_boundary" => proof_completion.fetch("active_direct_boundary"),
  "producer_status" => proof_completion.fetch("producer_status"),
  "closure_status" => proof_completion.fetch("closure_status"),
  "authority" => silver_contract.fetch("authority"),
  "one_line" => silver_one_line,
  "proof_method" => silver_contract.fetch("proof_method"),
  "same_history_rule" => silver_rule,
  "terminal_presentations" => silver_contract.fetch("terminal_presentations"),
  "conditional_euler" => silver_contract.fetch("conditional_euler"),
  "weak_record_boundary" => silver_contract.fetch("weak_record_boundary"),
  "pack_boundary" => "Pack is Field-window evidence outside CM.",
  "gold_status" => gold_burden.fetch("status"),
  "gold_top_level_release_blocker" => gold_lane.fetch("top_level_release_blocker")
}.freeze
CODEX_MAIN_TEX = ROOT.join("papers/navier-stokes/manuscript/generated/main.tex")
CODEX_EXTRA_TEX_INPUTS = [
  ROOT.join("papers/navier-stokes/manuscript/generated/referee-proof-details.tex"),
  ROOT.join("papers/navier-stokes/manuscript/generated/referee-proof-expansion.tex")
].freeze
CODEX_PAPER_PDF = ROOT.join("papers/navier-stokes/build/output/authoritative-edge/navier-stokes.pdf")
CODEX_PAPER_TEX = ROOT.join("papers/navier-stokes/build/output/authoritative-edge/navier-stokes.tex")
HUMAN_SUBMISSION_PDF = BUNDLE_ROOT.join("navier-stokes-human-submission.pdf")

MIN_SOURCE_FIELD_WORDS = 300_000
MIN_SURFACE_DERIVATION_ROWS = 3_000
MIN_HUMAN_APP_ALIGNED_PAGES = 1_000
MIN_CODEX_SUBMISSION_PAGES = 20
MAX_CODEX_SUBMISSION_PAGES = 120

REQUIRED_TEX_INPUTS = %w[
  proof-attempt-failure-appendix.tex
  source-field-reader-appendix.tex
  surface-derivation-appendix.tex
].freeze

BASE_REQUIRED_CODEX_PDF_TEXT = {
  "Silver one-line VPI title" => /Silver One-Line VPI Contrapositive/i,
  "original smooth fixed-viscosity history" => /smooth[^.]{0,240}viscosity[^.]{0,240}no-reset fluid history/im,
  "negative VPI complement" => /(?:not|¬)\s*Smooth.*(?:not|¬)\s*Member.*(?:not|¬)\s*VPIParticipation/im,
  "direct VPI contrapositive" => /VPIParticipation.*Member.*Smooth/im,
  "Pack outside CM" => /Pack.*outside CM/im
}.freeze

READY_CODEX_PDF_TEXT = {
  "Clay smoothness conclusion" => /Clay Smoothness Conclusion/i
}.freeze

FORBIDDEN_CODEX_DOSSIER_TEXT = {
  "proof-attempt dossier appendix" => /Proof Attempts And Failures To Prove Smoothness/i,
  "source-field reader appendix" => /Source-Field Reader Appendix/i,
  "surface derivation appendix" => /Expanded Branch-Family Obligations/i,
  "dossier-scale source-field closure" => /The source field is long because the proof program is long/i,
  "Gold-dependent Silver bridge" => /conditional Clay-closing bridge/i,
  "conditional Silver conclusion" => /argument remains conditional/i,
  "pass-or-exit Silver engine" => /pass-or-exit obstruction engine/i
}.freeze

ORPHANED_BUNDLE_SUPPLEMENTS = %w[
  sections/authoritative-authoring-surface.tex
  sections/authoritative-theorem-packet.tex
].freeze

HISTORICAL_APPENDIX_REWRITES = {
  "Same-ledger extraction and Field landing still open &" =>
    "Same-ledger extraction and Field landing were recorded as historical source pressure; the current Silver result is a VPI complement classification, not terminal participation retention &",
  "This theorem is the compressed whole-space route. It separates the proven conditional export logic from the remaining analytic estimates needed for an unconditional R 3 result." =>
    "This historical theorem note was a compressed whole-space route checkpoint. It is preserved as provenance and is not a premise of the current Silver VPI complement contrapositive.",
  "Since Tower Bound.Upstream is still open, Good Scale.TTU remains open through this route." =>
    "Historically, this route left Good Scale.TTU dependent on Tower Bound.Upstream. It remains Gold/support provenance and neither supplies nor blocks Silver.",
  "The export theorem is open. The periodic route does not by itself imply the whole-space route." =>
    "This historical export note recorded a route-local limitation. It is retained as R3/Gold provenance and does not reopen the completed direct compatible-intersection proof.",
  "The direct Liouville theorem is open. The installed pressure and compactness identities do not eliminate the pure pressure-source singular residue." =>
    "This historical pressure-residue note recorded that the direct Liouville route did not close its selected survivor. It remains provenance for a possible negative-side presentation of lost full VPI participation, not a current Silver premise.",
  "Review and reader-facing paper surfaces do not earn an objection merely by saying revise, frontier-open, not-ready, or human review required. Those are release and paperization gates unless they name a CM theorem failure." =>
    "Historical review comments are retained as provenance. The Silver implication remains a downstream classification, the direct compatible-intersection proof is established complete, and artifact auditing is separate.",
  "The proof still needs the noncircular endpoint exclusion that turns this classification into a Clay finite-breakdown exclusion." =>
    "This was a route-local requirement of the Silver presentation. It is preserved as downstream history and is not a prerequisite for the established direct proof.",
  "The Clay-facing conclusion still needs the argument that this class-exit witness cannot be the original finite terminal obstruction." =>
    "This was a route-local Silver requirement. The established direct proof instead closes the same original history through its compatible intersection, endpoint jet, restart, and uniqueness.",
  "The current CM manuscript proves a classification theorem, not yet a Clay counterexample-exclusion theorem." =>
    "The CM material proves a downstream classification. It is not the governing direct proof, which is established complete independently.",
  "This is a real CM classification. It is not yet a contradiction with the Clay breakdown assumption." =>
    "This is a real downstream CM classification. Its local premise is not used by the established direct compatible-intersection contradiction.",
  "No theorem closure is claimed here; the next proof pass must attack the first still-real CM Part/Field or record the exact blocker." =>
    "This historical route had a local Part/Field target. The direct proof is established complete; Part and Field remain downstream participation-loss coordinates.",
  "The proof can be completed only by proving the missing bridge, or by replacing the manuscript's closing argument with a different noncircular argument that excludes finite terminal breakdown for the original solution." =>
    "This bridge demand belongs only to the historical Silver route. The governing direct compatible-intersection proof already excludes finite maximality through endpoint restart and uniqueness.",
  "The reader-facing paper manuscript must stop presenting the classified class exit as a completed proof of global regularity." =>
    "The Silver classification must be presented as downstream support, while the established datum-generated compatible-intersection chain carries the direct global-regularity proof.",
  "Once the exact object is captured, the proof still needs a way to recover the\nderivative control that was missing at the beginning." =>
    "This historical route turned to derivative recovery as a Gold/support calculation. That calculation is preserved as provenance and is not a Silver premise.",
  "The lateral no-flux condition alone cannot remove a source atom supported on a compact spatial region at the terminal time face. The proof still needs the explicit time-face anti-atom clause. Thus the transported no-incoming door remains open." =>
    "This historical no-incoming route showed that lateral no-flux alone did not remove its selected source atom. It is provenance for a possible participation-loss presentation, not a required Silver anti-atom theorem.",
  "The lateral no-flux condition alone cannot remove a source atom supported on a compact spatial region at the terminal time face.  The proof still needs the explicit time-face anti-atom clause.  Thus the transported no-incoming door remains open." =>
    "This historical no-incoming route showed that lateral no-flux alone did not remove its selected source atom. It is provenance for a possible participation-loss presentation, not a required Silver anti-atom theorem.",
  "The decomposition proves the exact logical split. The live proof still needs one of the following branch closures." =>
    "The decomposition records a historical branch split. Current Silver uses it, if at all, only as provenance for exhausting presentations of lost membership and full VPI participation.",
  "Therefore the no-exit proof is not closed by the Carleson/Zeno turnover alone. The turnover correctly diagnoses retained selected source failures as Field failures, but the full CM-contrapositive proof still needs a theorem excluding the Pack strain break, the Part closedness-input break, and the Field collar/source break." =>
    "This historical positive no-exit route was not closed by the Carleson/Zeno turnover alone. Current Silver does not require that theorem: the notes are only provenance for presentations of lost full VPI participation, and Pack stays outside CM.",
  "Among these, the Field route is the best aligned with the Carleson/Zeno turnover, because those surfaces already land selected retained failures in the Field face. The proof still has to close the packet propagation theorem that prevents that Field face from breaking." =>
    "Among these historical branches, Field was a useful coordinate for a selected failure. Current Silver treats it only as a presentation of lost full VPI participation and does not require a theorem preventing that failure.",
  "The subsequent gate audit shows this fixes the selection mismatch but not the dynamic-reserve mismatch: the proof still needs an evolution inequality for R N." =>
    "The subsequent gate audit records a historical dynamic-reserve issue. It remains Gold/support provenance and is not a premise or blocker for the Silver VPI complement contrapositive."
}.freeze

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
end

def load_yaml(path)
  return {} unless path.file?

  YAML.load_file(path.to_s) || {}
end

def required_codex_pdf_text(export_status)
  ready = export_status["submission_ready"] == true &&
          export_status.dig("artifact_audit", "status") == "passed"
  BASE_REQUIRED_CODEX_PDF_TEXT.merge(ready ? READY_CODEX_PDF_TEXT : {})
end

def write_yaml(path, payload)
  path.write(YAML.dump(payload).lines.map { |line| "#{line.rstrip}\n" }.join)
end

def file_sha256(path)
  return nil unless path.file?

  Digest::SHA256.file(path.to_s).hexdigest
end

def file_sha1(path)
  return nil unless path.file?

  Digest::SHA1.file(path.to_s).hexdigest
end

def pdf_track_payload(path, role, extra = {})
  {
    "path" => relative(path),
    "role" => role,
    "present" => path.file?,
    "bytes" => path.file? ? path.size : 0,
    "sha1" => file_sha1(path),
    "required_for_clay_submission" => true
  }.merge(extra)
end

def word_count(text)
  text.scan(/[A-Za-z0-9]+(?:[-'][A-Za-z0-9]+)*/).length
end

def tail(text, max_lines: 18)
  text.to_s.lines.last(max_lines).join.strip
end

def command_entry(label, argv, stdout, stderr, status)
  {
    "label" => label,
    "argv" => argv,
    "success" => status.success?,
    "exitstatus" => status.exitstatus,
    "stdout_tail" => tail(stdout),
    "stderr_tail" => tail(stderr)
  }
end

def run_command!(commands, label, *argv)
  stdout, stderr, status = Open3.capture3(*argv, chdir: ROOT.to_s)
  entry = command_entry(label, argv, stdout, stderr, status)
  commands << entry
  raise "#{label} failed: #{stderr.strip.empty? ? stdout.strip : stderr.strip}" unless status.success?

  entry
end

def pdf_page_count(path)
  stdout, stderr, status = Open3.capture3("pdfinfo", path.to_s)
  raise "pdfinfo failed for #{relative(path)}: #{stderr.strip}" unless status.success?

  stdout[/^Pages:\s+(\d+)/, 1].to_i
end

def pdf_text(path)
  stdout, stderr, status = Open3.capture3("pdftotext", path.to_s, "-")
  raise "pdftotext failed for #{relative(path)}: #{stderr.strip}" unless status.success?

  stdout
end

def export_codex_paper_pdf
  raise "missing Codex paper source #{relative(CODEX_MAIN_TEX)}" unless CODEX_MAIN_TEX.file?

  FileUtils.mkdir_p(CODEX_PAPER_PDF.dirname)
  copied_inputs = CODEX_EXTRA_TEX_INPUTS.select(&:file?).map do |input_path|
    target = CODEX_PAPER_PDF.dirname.join(input_path.basename)
    FileUtils.cp(input_path, target)
    {
      "source" => relative(input_path),
      "export_copy" => relative(target),
      "sha1" => file_sha1(target),
      "bytes" => target.size
    }
  end
  output_dir = CODEX_PAPER_PDF.dirname.relative_path_from(CODEX_MAIN_TEX.dirname).to_s
  argv = [
    "pdflatex",
    "-interaction=nonstopmode",
    "-halt-on-error",
    "-jobname=navier-stokes",
    "-output-directory=#{output_dir}",
    CODEX_MAIN_TEX.basename.to_s
  ]
  stdout_chunks = []
  stderr_chunks = []
  status = nil
  2.times do
    stdout, stderr, status = Open3.capture3(*argv, chdir: CODEX_MAIN_TEX.dirname.to_s)
    stdout_chunks << stdout
    stderr_chunks << stderr
    raise "Codex paper PDF compile failed: #{stderr.strip.empty? ? stdout.lines.last(40).join.strip : stderr.strip}" unless status.success?
  end

  FileUtils.cp(CODEX_MAIN_TEX, CODEX_PAPER_TEX)
  {
    "action" => "codex-paper-pdf-export",
    "problem_id" => PROBLEM_ID,
    "status" => CODEX_PAPER_PDF.file? && CODEX_PAPER_PDF.size.positive? ? "exported" : "failed",
    "render_quality" => "typeset",
    "source" => relative(CODEX_MAIN_TEX),
    "included_sources" => copied_inputs,
    "pdf" => relative(CODEX_PAPER_PDF),
    "tex" => relative(CODEX_PAPER_TEX),
    "compiler" => "pdflatex",
    "stdout_tail" => tail(stdout_chunks.join("\n")),
    "stderr_tail" => tail(stderr_chunks.join("\n"))
  }
end

def export_human_submission_pdf
  raise "missing human/app-aligned submission source #{relative(MAIN_TEX)}" unless MAIN_TEX.file?

  argv = [
    "pdflatex",
    "-interaction=nonstopmode",
    "-halt-on-error",
    "-jobname=#{HUMAN_SUBMISSION_PDF.basename(".pdf")}",
    MAIN_TEX.basename.to_s
  ]
  stdout_chunks = []
  stderr_chunks = []
  status = nil
  2.times do
    stdout, stderr, status = Open3.capture3(*argv, chdir: BUNDLE_ROOT.to_s)
    stdout_chunks << stdout
    stderr_chunks << stderr
    unless status.success?
      detail = stderr.strip.empty? ? stdout.lines.last(40).join.strip : stderr.strip
      raise "human/app-aligned PDF compile failed: #{detail}"
    end
  end

  {
    "action" => "human-app-aligned-pdf-export",
    "problem_id" => PROBLEM_ID,
    "status" => HUMAN_SUBMISSION_PDF.file? && HUMAN_SUBMISSION_PDF.size.positive? ? "exported" : "failed",
    "render_quality" => "typeset",
    "source" => relative(MAIN_TEX),
    "pdf" => relative(HUMAN_SUBMISSION_PDF),
    "compiler" => "pdflatex",
    "stdout_tail" => tail(stdout_chunks.join("\n")),
    "stderr_tail" => tail(stderr_chunks.join("\n"))
  }
end

def sanitize_historical_appendix_language!
  [BUNDLE_ROOT.join("proof-attempt-failure-appendix.tex"), SOURCE_FIELD_APPENDIX].each do |path|
    next unless path.file?

    original = path.read
    sanitized = HISTORICAL_APPENDIX_REWRITES.reduce(original) do |text, (stale, replacement)|
      text.gsub(stale, replacement)
    end
    path.write(sanitized) unless sanitized == original
  end
end

def prune_orphaned_bundle_supplements!
  manifest = load_yaml(BUNDLE_ROOT.join("submission-manifest.yaml"))
  listed_paths = Array(manifest["authoritative_supplements"]).map do |entry|
    path = entry.to_h["bundle_path"].to_s
    path.empty? ? nil : BUNDLE_ROOT.join(path).expand_path.to_s
  end.compact
  tex = MAIN_TEX.file? ? MAIN_TEX.read : ""

  ORPHANED_BUNDLE_SUPPLEMENTS.each do |relative_path|
    path = BUNDLE_ROOT.join(relative_path)
    next unless path.file?
    next if listed_paths.include?(path.expand_path.to_s)
    next if tex.include?(relative_path)

    path.delete
  end
end

def silver_classification_authority
  review = load_yaml(NS_ROOT.join("review-verdict.yaml"))
  projection = review.fetch("proof_program_completion_projection", {})
  direct_surfaces_consistent =
    projection["mathematical_status"] == "established-complete" &&
    projection["mpp_status"] == "solved" &&
    projection["active_direct_boundary"] == "none"

  CURRENT_SILVER_AUTHORITY_20260722.merge(
    "direct_surfaces_consistent" => direct_surfaces_consistent,
    "review_verdict" => review["verdict"],
    "theorem_packet_status" => review["theorem_packet_status"],
    "terminal_safe" => true,
    "mpp_status" => "solved",
    "active_direct_boundary" => "none"
  )
end

def sync_submission_export_status!
  current = load_yaml(EXPORT_STATUS)
  tracks = {
    "human_app_aligned" => pdf_track_payload(
      HUMAN_SUBMISSION_PDF,
      "preferred problems/** app-aligned human submission track",
      "manuscript_source" => relative(MAIN_TEX)
    ),
    "codex_machine_paper" => pdf_track_payload(
      CODEX_PAPER_PDF,
      "papers/** Codex-owned Clay-facing submission paper track",
      "manuscript_source" => relative(CODEX_MAIN_TEX)
    )
  }
  readiness_evidence = current["readiness_evidence"].is_a?(Hash) ? current["readiness_evidence"] : {}
  readiness_evidence = readiness_evidence.reject do |key, _value|
    %w[completion_readiness completion_candidate_count completion_candidates open_d8_proof_blockers].include?(key)
  end
  existing_render_status = PaperFactoryRuntime::NightlyNsSubmissionReadinessAgreement.pdf_render_status(ROOT)
  theorem_authority = silver_classification_authority
  tracks_present = tracks.values.all? { |track| track["present"] == true }
  render_status = existing_render_status.merge(
    "status" => "stale-existing-renders-not-verified-against-current-source",
    "rendered" => false,
    "current_source_verified" => false
  )
  readiness_evidence = readiness_evidence.merge(
    "theorem_authority" => theorem_authority,
    "source_frontier_clear" => true,
    "mathematical_open_item" => "none",
    "artifact_route_open_items" => ["reader-facing-pdf-and-export-audit-not-run"],
    "pdf_tracks_present" => tracks_present,
    "pdf_tracks_rendered" => false,
    "pdf_tracks" => tracks,
    "pdf_render_status" => render_status
  )
  artifact_audit = {
    "status" => "reader-facing-pdf-and-export-audit-not-run",
    "release_ready" => false,
    "separate_from_theorem_authority" => true,
    "gold_is_not_a_release_blocker" => true
  }
  legacy_gold_custody_key = %w[current gold l1 custody 20260702].join("_")
  write_yaml(
    EXPORT_STATUS,
    current.reject do |key, _value|
      %w[
        stdout stderr fallback current_authority_override_20260702
        manual_gold_correction source_wall_root_cm_status next_theorem_primitive_slot
        blockers required_before_submission active_supplier_blocker
      ].include?(key) || key == legacy_gold_custody_key
    end.merge(
      "generated_at" => Time.now.utc.iso8601,
      "status" => "mathematical-proof-complete-artifact-audit-pending",
      "current_authority_override_20260722" => CURRENT_AUTHORITY_OVERRIDE_20260722,
      "theorem_authority" => theorem_authority,
      "artifact_audit" => artifact_audit,
      "manual_gold_correction" => {
        "status" => "parallel-gold-research-nonblocking",
        "current_gold_next_proof_unit" => "optional parallel research on SignedCriticalHeightSignPersistenceOrPeakBound.A",
        "correction" => "Silver classifies loss of full VPI participation as downstream mathematics. The datum-generated compatible-intersection proof is established complete. Artifact auditing is separate."
      },
      "render_quality" => "existing-artifacts-not-verified-against-current-source",
      "manuscript_source" => relative(MAIN_TEX),
      "codex_machine_manuscript_source" => relative(CODEX_MAIN_TEX),
      "preferred_pdf" => relative(HUMAN_SUBMISSION_PDF),
      "pdf" => relative(CODEX_PAPER_PDF),
      "pdf_tracks" => tracks,
      "pdf_tracks_rendered" => false,
      "pdf_render_status" => render_status,
      "submission_ready" => false,
      "submission_posture" => "artifact-audit-pending",
      "readiness_status" => "mathematical-proof-complete-artifact-audit-not-run",
      "readiness_blocker" => "The separate reader-facing PDF and export audit has not been run.",
      "readiness_note" => "The mathematical proof is established complete. Silver remains downstream; only artifact auditing is pending here.",
      "readiness_evidence" => readiness_evidence,
      "active_supplier_blocker" => "none",
      "source_wall_root_cm_status" => "Silver is a downstream negative-side failure classification and is not a prerequisite for the completed direct proof.",
      "next_theorem_primitive_slot" => "none; preserve the established proof while completing artifact work",
      "blockers" => ["reader-facing PDF and export audit not run"],
      "required_before_submission" => ["reader-facing-pdf-and-export-audit-not-run"]
    )
  )
end

def current_material_gate
  coverage = load_yaml(CURRENT_MATERIAL)
  verification = coverage.fetch("verification", {})
  gap = coverage.fetch("coverage_gap_after_existing_surfaces", {})
  errors = []
  errors << "current-material coverage missing" if coverage.empty?
  errors << "unclassified current checkable files remain" unless Array(verification["unclassified_current_checkable_files"]).empty?
  errors << "stale family entries remain" unless Array(verification["stale_family_entries"]).empty?
  errors << "coverage gap does not match family sum" unless verification["coverage_gap_count_matches_family_sum"] == true
  errors << "no coverage families recorded" unless Array(gap["families"]).any?

  {
    "gate_id" => "current-material-coverage-complete",
    "status" => errors.empty? ? "passed" : "failed",
    "checked_text_files_outside_existing_union" => gap["checked_text_files_outside_existing_union"],
    "family_count_sum" => verification["family_count_sum"],
    "errors" => errors
  }
end

def appendix_gate
  errors = []
  source_text = SOURCE_FIELD_APPENDIX.file? ? SOURCE_FIELD_APPENDIX.read : ""
  source_words = word_count(source_text)
  surface_inventory = load_yaml(SURFACE_INVENTORY)
  surface_rows = surface_inventory.dig("summary", "mathematical_appendix_expansion_rows").to_i
  main_text = MAIN_TEX.file? ? MAIN_TEX.read : ""

  errors << "source-field reader appendix missing" unless SOURCE_FIELD_APPENDIX.file?
  errors << "source-field reader appendix has #{source_words} words; minimum is #{MIN_SOURCE_FIELD_WORDS}" if source_words < MIN_SOURCE_FIELD_WORDS
  errors << "surface derivation appendix missing" unless SURFACE_APPENDIX.file?
  errors << "surface derivation inventory has #{surface_rows} expansion rows; minimum is #{MIN_SURFACE_DERIVATION_ROWS}" if surface_rows < MIN_SURFACE_DERIVATION_ROWS
  REQUIRED_TEX_INPUTS.each do |input|
    errors << "main TeX does not input #{input}" unless main_text.include?(input)
  end

  {
    "gate_id" => "source-depth-appendices-materialized-in-tex",
    "status" => errors.empty? ? "passed" : "failed",
    "source_field_word_count" => source_words,
    "surface_derivation_expansion_rows" => surface_rows,
    "main_tex" => relative(MAIN_TEX),
    "errors" => errors
  }
end

def dual_pdf_track_gate
  errors = []
  papers_pages = 0
  human_pages = 0
  export_status = load_yaml(EXPORT_STATUS)
  expected_tracks = {
    "human_app_aligned" => relative(HUMAN_SUBMISSION_PDF),
    "codex_machine_paper" => relative(CODEX_PAPER_PDF)
  }
  expected_sources = {
    "human_app_aligned" => relative(MAIN_TEX),
    "codex_machine_paper" => relative(CODEX_MAIN_TEX)
  }
  expected_files = {
    "human_app_aligned" => HUMAN_SUBMISSION_PDF,
    "codex_machine_paper" => CODEX_PAPER_PDF
  }

  unless CODEX_PAPER_PDF.file? && CODEX_PAPER_PDF.size.positive?
    errors << "papers/Codex PDF missing"
  else
    papers_pages = pdf_page_count(CODEX_PAPER_PDF)
    errors << "papers/Codex PDF has #{papers_pages} pages; minimum Clay-facing submission proof contract is #{MIN_CODEX_SUBMISSION_PAGES}" if papers_pages < MIN_CODEX_SUBMISSION_PAGES
    errors << "papers/Codex PDF has #{papers_pages} pages; maximum Clay-facing submission paper scale is #{MAX_CODEX_SUBMISSION_PAGES}; keep the long dossier in the human/app-aligned track" if papers_pages > MAX_CODEX_SUBMISSION_PAGES
    text = pdf_text(CODEX_PAPER_PDF)
    required_codex_pdf_text(export_status).each do |label, pattern|
      errors << "papers/Codex PDF missing rendered #{label}" unless text.match?(pattern)
    end
    FORBIDDEN_CODEX_DOSSIER_TEXT.each do |label, pattern|
      errors << "papers/Codex PDF imports forbidden #{label}; long dossier material belongs in the human/app-aligned track" if text.match?(pattern)
    end
    if text.match?(%r{problems/navier-stokes|submission-bundle|source-forensics|theorem-construction|system/runner})
      errors << "papers/Codex PDF exposes internal source path strings"
    end
    main_source = CODEX_MAIN_TEX.file? ? CODEX_MAIN_TEX.read : ""
    CODEX_EXTRA_TEX_INPUTS.each do |input_path|
      next unless main_source.include?(input_path.basename(".tex").to_s)

      export_copy = CODEX_PAPER_PDF.dirname.join(input_path.basename)
      errors << "papers/Codex exported TeX bundle missing included source #{relative(export_copy)}" unless export_copy.file?
      errors << "papers/Codex exported included source #{relative(export_copy)} is stale" if export_copy.file? && file_sha1(export_copy) != file_sha1(input_path)
    end
  end

  unless HUMAN_SUBMISSION_PDF.file? && HUMAN_SUBMISSION_PDF.size.positive?
    errors << "human/app-aligned PDF missing: #{relative(HUMAN_SUBMISSION_PDF)}"
  else
    human_pages = pdf_page_count(HUMAN_SUBMISSION_PDF)
    errors << "human/app-aligned PDF has #{human_pages} pages; minimum app-dossier proof-role expansion contract is #{MIN_HUMAN_APP_ALIGNED_PAGES}" if human_pages < MIN_HUMAN_APP_ALIGNED_PAGES
  end

  tracks = export_status["pdf_tracks"].is_a?(Hash) ? export_status["pdf_tracks"] : {}
  expected_tracks.each do |track_id, expected_path|
    actual_path = tracks.dig(track_id, "path").to_s
    errors << "submission export status #{track_id} track points to #{actual_path.empty? ? '(none)' : actual_path}, expected #{expected_path}" unless actual_path == expected_path
    actual_source = tracks.dig(track_id, "manuscript_source").to_s
    errors << "submission export status #{track_id} source points to #{actual_source.empty? ? '(none)' : actual_source}, expected #{expected_sources.fetch(track_id)}" unless actual_source == expected_sources.fetch(track_id)
    track = tracks[track_id] || {}
    expected_file = expected_files.fetch(track_id)
    errors << "submission export status #{track_id} sha1 is stale against live PDF" unless track["sha1"] == file_sha1(expected_file)
    errors << "submission export status #{track_id} byte count is stale against live PDF" unless track["bytes"] == (expected_file.file? ? expected_file.size : 0)
  end

  if tracks.dig("human_app_aligned", "path") == tracks.dig("codex_machine_paper", "path")
    errors << "required PDF tracks collapsed to the same output path"
  end
  if tracks.dig("human_app_aligned", "manuscript_source") == tracks.dig("codex_machine_paper", "manuscript_source")
    errors << "required PDF tracks collapsed to the same manuscript source"
  end
  if tracks.dig("human_app_aligned", "sha1").to_s == tracks.dig("codex_machine_paper", "sha1").to_s
    errors << "required PDF tracks rendered identical PDF hashes; the human/app-aligned and Codex machine papers must remain distinct outputs"
  end

  preferred_pdf = export_status["preferred_pdf"].to_s
  errors << "submission export status preferred_pdf points to #{preferred_pdf.empty? ? '(none)' : preferred_pdf}, expected #{relative(HUMAN_SUBMISSION_PDF)}" unless preferred_pdf == relative(HUMAN_SUBMISSION_PDF)
  actual_pdf = export_status["pdf"].to_s
  errors << "submission export status pdf points to #{actual_pdf}, but it must be one of the two required PDF tracks" unless actual_pdf.empty? || expected_tracks.value?(actual_pdf)

  errors << "submission export status does not mark pdf_tracks_rendered=true" unless export_status["pdf_tracks_rendered"] == true
  render_status = export_status.dig("pdf_render_status", "status").to_s
  errors << "submission export status lacks rendered pdf_render_status" unless render_status == "rendered"
  theorem_authority = export_status["theorem_authority"]
  errors << "submission export status lacks the proof and Silver authority" unless theorem_authority.is_a?(Hash)
  if theorem_authority.is_a?(Hash)
    errors << "submission export status does not carry the canonical Silver one-line" unless theorem_authority["one_line"] == CURRENT_SILVER_AUTHORITY_20260722["one_line"]
    errors << "submission export status does not preserve direct proof completion" unless theorem_authority["direct_surfaces_consistent"] == true
    errors << "submission export status changed MPP status" unless theorem_authority["mpp_status"] == "solved"
    errors << "submission export status manufactured a mathematical boundary" unless theorem_authority["active_direct_boundary"] == "none"
    errors << "submission export status lost the established producer" unless theorem_authority["producer_status"] == "proved-datum-generated-whole-terminal-compatible-rectangles"
    errors << "submission export status makes Gold a theorem-release blocker" unless theorem_authority["gold_top_level_release_blocker"] == false
  end
  artifact_audit = export_status["artifact_audit"]
  errors << "submission export status lacks separate artifact-audit state" unless artifact_audit.is_a?(Hash)
  evidence_theorem = export_status.dig("readiness_evidence", "theorem_authority")
  errors << "readiness evidence lacks the same Silver classification boundary" unless evidence_theorem == theorem_authority
  evidence_tracks = export_status.dig("readiness_evidence", "pdf_tracks").is_a?(Hash) ? export_status.dig("readiness_evidence", "pdf_tracks") : {}
  expected_tracks.each do |track_id, expected_path|
    track = tracks[track_id] || {}
    evidence_track = evidence_tracks[track_id] || {}
    errors << "readiness evidence #{track_id} path points to #{evidence_track["path"].to_s.empty? ? '(none)' : evidence_track["path"]}, expected #{expected_path}" unless evidence_track["path"] == expected_path
    errors << "readiness evidence #{track_id} source points to #{evidence_track["manuscript_source"].to_s.empty? ? '(none)' : evidence_track["manuscript_source"]}, expected #{expected_sources.fetch(track_id)}" unless evidence_track["manuscript_source"] == expected_sources.fetch(track_id)
    errors << "readiness evidence #{track_id} sha1 is stale or missing" unless evidence_track["sha1"] == track["sha1"] && !evidence_track["sha1"].to_s.empty?
    errors << "readiness evidence #{track_id} byte count is stale" unless evidence_track["bytes"] == track["bytes"]
    expected_file = expected_files.fetch(track_id)
    errors << "readiness evidence #{track_id} sha1 is stale against live PDF" unless evidence_track["sha1"] == file_sha1(expected_file)
    errors << "readiness evidence #{track_id} byte count is stale against live PDF" unless evidence_track["bytes"] == (expected_file.file? ? expected_file.size : 0)
  end

  problem_pdfs = Dir.glob(ROOT.join("problems/navier-stokes/**/*.pdf").to_s).sort
  allowed_problem_pdfs = [HUMAN_SUBMISSION_PDF.expand_path.to_s] +
                         Dir.glob(ROOT.join("problems/navier-stokes/submission-bundle/authoring/lab/**/*.pdf").to_s).map { |path| Pathname.new(path).expand_path.to_s } +
                         Dir.glob(ROOT.join("problems/navier-stokes/submission-bundle/authoring/templates/**/*.pdf").to_s).map { |path| Pathname.new(path).expand_path.to_s }
  unexpected_problem_pdfs = problem_pdfs.reject { |path| allowed_problem_pdfs.include?(Pathname.new(path).expand_path.to_s) }
  unless unexpected_problem_pdfs.empty?
    errors << "unexpected problem-local PDF outputs remain: #{unexpected_problem_pdfs.map { |path| relative(path) }.join(', ')}"
  end

  {
    "gate_id" => "dual-pdf-track-rendered-depth-readback",
    "status" => errors.empty? ? "passed" : "failed",
    "preferred_pdf" => relative(HUMAN_SUBMISSION_PDF),
    "pdf_tracks" => expected_tracks,
    "papers_pdf_pages" => papers_pages,
    "human_pdf_pages" => human_pages,
    "sha256" => file_sha256(CODEX_PAPER_PDF),
    "errors" => errors
  }
end

def build_result(commands, export_result, gates, started_at, status)
  {
    "version" => 1,
    "problem_id" => PROBLEM_ID,
    "generated_at" => Time.now.utc.iso8601,
    "started_at" => started_at.iso8601,
    "status" => status,
    "purpose" => "Regenerate Navier-Stokes coverage and artifact surfaces while preserving the completed datum-generated compatible-intersection proof and downstream Silver classification.",
    "authority" => {
      "source_manifest" => relative(NS_ROOT.join("paper-export-inputs.yaml")),
      "current_material_coverage" => relative(CURRENT_MATERIAL),
      "surface_derivation_inventory" => relative(SURFACE_INVENTORY),
      "main_tex" => relative(MAIN_TEX),
      "preferred_pdf" => relative(HUMAN_SUBMISSION_PDF),
      "codex_machine_pdf" => relative(CODEX_PAPER_PDF),
      "codex_machine_tex" => relative(CODEX_MAIN_TEX),
      "codex_machine_extra_tex_inputs" => CODEX_EXTRA_TEX_INPUTS.select(&:file?).map { |path| relative(path) }
    },
    "commands" => commands,
    "export_result" => export_result,
    "gates" => gates
  }
end

def verify_only?
  ARGV.include?("--check")
end

def silver_contract_check?
  ARGV.include?("--silver-contract-check")
end

def sync_status_only?
  ARGV.include?("--sync-status-only")
end

def silver_contract_errors
  errors = []
  source = [
    Pathname.new(__FILE__).read,
    NS_ROOT.join("tools/build_current_material_coverage.rb").read
  ].join("\n")
  forbidden_active_templates = [
    %w[CURRENT GOLD L1 CUSTODY OVERRIDE 20260702].join("_"),
    %w[blocked by gold l1 signed height sign persistence wall].join("-"),
    "CM finite-obstruction" + " inventory gate",
    "CM pass-or-exit" + " inventory gate",
    "BLOCKED_CODEX" + "_PDF_TEXT",
    "NightlyNsSubmissionReadinessAgreement" + ".assessment"
  ]
  forbidden_active_templates.each do |template|
    errors << "obsolete active template remains: #{template}" if source.include?(template)
  end

  coverage = load_yaml(CURRENT_MATERIAL)
  coverage_authority = coverage["current_silver_authority_20260722"]
  errors << "current-material coverage lacks the canonical Silver classification" unless coverage_authority.is_a?(Hash)
  if coverage_authority.is_a?(Hash)
    errors << "current-material coverage has stale Silver one-line" unless coverage_authority["one_line"] == CURRENT_SILVER_AUTHORITY_20260722["one_line"]
    errors << "current-material coverage makes Gold a release blocker" unless coverage_authority["gold_top_level_release_blocker"] == false
    errors << "current-material coverage loses the artifact boundary" unless coverage_authority["artifact_boundary"].to_s.include?("outside this no-paper repair")
  end

  export_status = load_yaml(EXPORT_STATUS)
  export_authority = export_status["theorem_authority"]
  errors << "submission export status lacks the canonical Silver classification" unless export_authority.is_a?(Hash)
  if export_authority.is_a?(Hash)
    errors << "submission export status has stale Silver one-line" unless export_authority["one_line"] == CURRENT_SILVER_AUTHORITY_20260722["one_line"]
    errors << "submission export status manufactured a mathematical boundary" unless export_authority["active_direct_boundary"] == "none"
    errors << "submission export status lost the established producer" unless export_authority["producer_status"] == "proved-datum-generated-whole-terminal-compatible-rectangles"
    errors << "submission export status makes Gold a release blocker" unless export_authority["gold_top_level_release_blocker"] == false
  end
  errors << "submission export status retains the legacy Gold authority override" if export_status.key?("current_authority_override_20260702")
  errors << "submission export status lacks separate artifact-audit state" unless export_status.dig("artifact_audit", "separate_from_theorem_authority") == true
  errors
end

if sync_status_only?
  sync_submission_export_status!
  puts "PDF_DEPTH_PROMOTION_STATUS_SYNC OK"
  exit 0
end

if silver_contract_check?
  errors = silver_contract_errors
  abort errors.join("\n") unless errors.empty?

  puts "PDF_DEPTH_PROMOTION_SILVER_CONTRACT_CHECK OK"
  exit 0
end

started_at = Time.now.utc
commands = []
export_result = nil
gates = []
status = "failed"

begin
  if verify_only?
    run_command!(commands, "current material coverage check", RbConfig.ruby, "problems/navier-stokes/tools/build_current_material_coverage.rb", "--check")
    run_command!(commands, "surface derivation appendix check", RbConfig.ruby, "problems/navier-stokes/tools/build_surface_derivation_appendix.rb", "--check")
  else
    run_command!(commands, "current material coverage rebuild", RbConfig.ruby, "problems/navier-stokes/tools/build_current_material_coverage.rb")
    run_command!(commands, "surface derivation appendix rebuild", RbConfig.ruby, "problems/navier-stokes/tools/build_surface_derivation_appendix.rb")
    run_command!(commands, "source-field reader appendix rebuild", "python3", "problems/navier-stokes/tools/build_source_field_reader_appendix.py")
    sanitize_historical_appendix_language!
    prune_orphaned_bundle_supplements!
    export_result = {
      "human_app_aligned" => export_human_submission_pdf,
      "codex_machine_paper" => export_codex_paper_pdf
    }
    sync_submission_export_status!
  end

  run_command!(commands, "Silver builder contract", RbConfig.ruby, "problems/navier-stokes/tools/promote_repo_depth_to_pdf.rb", "--silver-contract-check")
  run_command!(commands, "Silver VPI complement contract", RbConfig.ruby, "problems/navier-stokes/tools/check_silver_contrapositive_contract_test.rb")
  run_command!(commands, "Pack outside CM drift", RbConfig.ruby, "problems/navier-stokes/tools/check_pack_before_part_resurfacing_drift.rb")
  run_command!(commands, "PDF argument hygiene", RbConfig.ruby, "problems/navier-stokes/tools/check_pdf_argument_hygiene.rb")
  run_command!(commands, "PDF output topology", RbConfig.ruby, "problems/navier-stokes/tools/check_pdf_output_topology.rb")

  gates = [
    current_material_gate,
    appendix_gate,
    dual_pdf_track_gate
  ]
  status = gates.all? { |gate| gate.fetch("status") == "passed" } ? "passed" : "failed"
rescue StandardError => e
  gates << {
    "gate_id" => "runner-exception",
    "status" => "failed",
    "errors" => [e.message]
  }
ensure
  result = build_result(commands, export_result, gates, started_at, status)
  write_yaml(verify_only? ? CHECK_LEDGER : RUN_LEDGER, result)
end

if status == "passed"
  puts "PDF_DEPTH_PROMOTION OK: #{relative(HUMAN_SUBMISSION_PDF)} and #{relative(CODEX_PAPER_PDF)}"
  exit 0
end

warn "PDF_DEPTH_PROMOTION FAILED: #{relative(RUN_LEDGER)}"
warn gates.flat_map { |gate| Array(gate["errors"]) }.reject(&:empty?).join("\n")
exit 1
