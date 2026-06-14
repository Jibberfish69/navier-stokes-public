#!/usr/bin/env ruby
# frozen_string_literal: true

require "optparse"
require "open3"
require "pathname"
require "time"
require "yaml"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
DEFAULT_SCOPE = ROOT.join("problems/navier-stokes/theorem-construction")

MARKER_PATTERN = /
  \\sim|\\simeq|\\asymp|\\approx|\\gtrsim|\\lesssim|
  ∼|≃|≍|≈|≲|≳|
  \bschematic(?:ally)?\b|
  \bsame\ order\ of\ (?:size|magnitude)\b|
  (?<![A-Za-z_])O\(|
  ~
/x.freeze

PROSE_MARKER_PATTERN = /
  #{MARKER_PATTERN.source}|
  \broughly\b|
  \bapprox(?:imate|imately)\b|
  \bmorally\b
/x.freeze

BROAD_MARKER_PATTERN = /
  #{PROSE_MARKER_PATTERN.source}|
  \bheuristic(?:ally)?\b|
  \bplausibl(?:e|y)\b|
  \bguess(?:work)?\b
/x.freeze

GUESSWORK_MARKER_PATTERN = /
  \bheuristic(?:ally)?\b|
  \bplausibl(?:e|y)\b|
  \bguess(?:work)?\b|
  \bfirst\ guess\b
/x.freeze

CONFIDENCE_MARKER_PATTERN = /
  \bintuit(?:ive|ively)\b|
  \bobvious(?:ly)?\b|
  \bclearly\b|
  \bimmediate(?:ly)?\b
/x.freeze

MARKER_PROFILES = {
  "strict" => MARKER_PATTERN,
  "prose" => PROSE_MARKER_PATTERN,
  "broad" => BROAD_MARKER_PATTERN,
  "guesswork" => GUESSWORK_MARKER_PATTERN,
  "confidence" => CONFIDENCE_MARKER_PATTERN
}.freeze

RG_MARKER_PROFILES = {
  "strict" => <<~'PAT'.lines.map(&:strip).join,
    \\\\sim|\\\\simeq|\\\\asymp|\\\\approx|\\\\gtrsim|\\\\lesssim|
    ∼|≃|≍|≈|≲|≳|
    \bschematic(?:ally)?\b|
    \bsame\ order\ of\ (?:size|magnitude)\b|
    ~
  PAT
  "prose" => <<~'PAT'.lines.map(&:strip).join,
    \\\\sim|\\\\simeq|\\\\asymp|\\\\approx|\\\\gtrsim|\\\\lesssim|
    ∼|≃|≍|≈|≲|≳|
    \bschematic(?:ally)?\b|
    \bsame\ order\ of\ (?:size|magnitude)\b|
    ~|
    \broughly\b|
    \bapprox(?:imate|imately)\b|
    \bmorally\b
  PAT
  "broad" => <<~'PAT'.lines.map(&:strip).join,
    \\\\sim|\\\\simeq|\\\\asymp|\\\\approx|\\\\gtrsim|\\\\lesssim|
    ∼|≃|≍|≈|≲|≳|
    \bschematic(?:ally)?\b|
    \bsame\ order\ of\ (?:size|magnitude)\b|
    ~|
    \broughly\b|
    \bapprox(?:imate|imately)\b|
    \bmorally\b|
    \bheuristic(?:ally)?\b|
    \bplausibl(?:e|y)\b|
    \bguess(?:work)?\b
  PAT
  "guesswork" => <<~'PAT'.lines.map(&:strip).join,
    \bheuristic(?:ally)?\b|
    \bplausibl(?:e|y)\b|
    \bguess(?:work)?\b|
    \bfirst\ guess\b
  PAT
  "confidence" => <<~'PAT'.lines.map(&:strip).join
    \bintuit(?:ive|ively)\b|
    \bobvious(?:ly)?\b|
    \bclearly\b|
    \bimmediate(?:ly)?\b
  PAT
}.freeze

RELATION_NOTATION_PATTERNS = [
  /\\sim_\{\\mathrm\{surv\}\}/,
  /\bQ\\sim Q'\b/,
  /\bQ\\sim Q'/,
  /\bQ'\\sim Q\b/,
  /Q'[^`\s]*\\sim Q/,
  /\\sum_\{Q'\\sim Q\}/,
  /\bb(?:_\{[^}]+\})?\\sim a\b/,
  /\ba\\sim b\b/,
  /Q_0\\sim\\cdots\\sim Q_m=Q/,
  /\bi\\sim j\b/,
  /active-neighbor relation `\\sim`/,
  /selector-neighbor relation `\\sim`/
].freeze

URL_OR_PATH_TILDE_PATTERN = %r{https?://\S*~|/\S*~}.freeze
HOME_PATH_TILDE_PATTERN = /(?:^|[\s`(])~\//.freeze
TYPOGRAPHIC_TILDE_PATTERN = /
  \b
  (?:
    Vol|Sec|Secs|Section|Sections|Thm|Theorem|Lemma|Prop|Proposition|
    Cor|Corollary|Def|Definition|Eq|Equation|Route|Step|Part|Fig|Figure|
    Table|ad
  )
  ~[A-Za-z0-9]
/x.freeze
SHELL_COLLAR_NOTATION_PATTERN = /_\{?\\sim\b/.freeze
APPROXIMATION_METHOD_LANGUAGE_PATTERNS = [
  /\bapproximate control\b/,
  /\bapproximate object\b/,
  /\bapproximate flows\b/,
  /\bapproximate flow\b/,
  /\bapproximate localized projector-moment dynamics\b/,
  /\bapproximate-identity convergence\b/,
  /\bapproximate-commutation theorem\b/,
  /\bapproximate loop ledger\b/,
  /\bapproximate-slope estimates\b/,
  /\bapproximately axisymmetric data\b/,
  /\bapproximate spectral packet\b/,
  /\bjoint approximate spectral packet\b/
].freeze
HONEST_GUESSWORK_LANGUAGE_PATTERNS = [
  /\bold heuristic\b/,
  /\bheuristic\b.*\b(?:motivation|historical|meaningful|formalized|replaced|replaces|not a proof|not automatically a proof)\b/i,
  /\bnot just heuristic\b/i,
  /\bonly heuristic\b/i,
  /\bmerely heuristic\b/i,
  /\bplausibl(?:e|y)\b.*\b(?:but|not|missing|conditional|candidate|frontier|mechanism|route|attack|unproved)\b/i,
  /\bfirst guess\b/i,
  /\bnot to guess\b/i,
  /\bnot "guess/i,
  /\bno longer .*guess\b/i,
  /\bforcing the reader to guess\b/i,
  /\bguesswork\b/i
].freeze
HISTORICAL_OR_VERBATIM_PATH_PATTERN = /
  (?:^|\/)
  (?:
    chatgpt-.*verbatim|
    .*verbatim.*|
    .*transcript.*|
    .*conversation.*|
    .*raw.*
  )
  [^\/]*\.md\z
/x.freeze
SAMPLE_EVIDENCE_PATH_PATTERN = %r{
  (?:^|/)docs/Samples/|
  (?:^|/)problems/navier-stokes/docs/Samples/
}x.freeze
FORENSIC_OR_AUDIT_SUPPORT_PATH_PATTERN = %r{
  (?:^|/)
  (?:
    problems/navier-stokes/source-forensics/.*\.md|
    problems/navier-stokes/docs/Samples/pulling\ teeth/pulling-teeth-audit\.md
  )\z
}x.freeze
ARCHIVED_PRODUCTION_PATH_PATTERN = %r{
  (?:^|/)problems/navier-stokes/submission-bundle/
  (?:
    paper-arc-production-runs|
    paper-arc-production-logs|
    source-spine-production-runs
  )/
}x.freeze
QUARANTINE_OR_INGEST_PATH_PATTERN = %r{
  (?:^|/)problems/navier-stokes/
  (?:
    forward-positive-proof-surface-quarantine-[^/]+\.yaml|
    marvin-ingest-notes\.yaml
  )\z
}x.freeze
TOOL_IMPLEMENTATION_PATH_PATTERN = %r{
  (?:^|/)(?:problems/navier-stokes/tools|tools|scripts)/
}x.freeze
GENERATED_BEHAVIOR_SUPPORT_PATH_PATTERN = %r{
  (?:^|/)system/meta/research-os/
  (?:
    relational-cognition/runs|
    promotions/|
    nightly-six-mpp/runs/|
    mcp-file-writes/operations/|
    turn-archive/
  )
}x.freeze
GENERATED_OR_ARCHIVE_SUPPORT_PATH_PATTERN = %r{
  (?:^|/)
  (?:
    archive|archives|tmp|logs|run-logs|snapshots|exports|
    manifests/migration-archive|
    papers/[^/]+/build/output|
    papers/[^/]+/manuscript/generated|
    papers/[^/]+/context/generated
  )/
}x.freeze
FORENSIC_RECOVERY_SUPPORT_PATH_PATTERN = %r{
  (?:^|/)problems/[^/]+/forensic-recovery/
}x.freeze
DEPENDENCY_SUPPORT_PATH_PATTERN = %r{
  (?:^|/)(?:node_modules|vendor)/
}x.freeze
OPERATIONAL_SUPPORT_PATH_PATTERN = %r{
  \A
  (?:
    AGENTS\.md|
    control/|
    system/|
    manifests/|
    brain/
  )
}x.freeze
THREAD_OR_BEHAVIOR_SUPPORT_PATH_PATTERN = %r{
  (?:^|/)
  [^/]*(
    delta-card|protocol|policy|recovery-log|cleanup|agent-contract|
    live-theorem-edge|question-chain|alignment
  )[^/]*\.(?:md|ya?ml|tex)\z
}ix.freeze
EXPLORATORY_MATH_SUPPORT_PATH_PATTERN = %r{
  (?:^|/)
  [^/]*(
    audit|attempt|note|program|candidate|frontier|memo|scaffold|verdict|
    watchlist|ingest|creation|contract|hypothesis|review|chronology|
    translation|report|source-pack|spine|ledger|packet|speculative|
    quarantine|historical|warrant|guard|health|intake|workpack
  )[^/]*\.(?:md|ya?ml|tex)\z
}ix.freeze
SESSION_OR_CONVERSATION_SUPPORT_PATH_PATTERN = %r{
  (?:^|/)
  (?:
    conversation-turns\.yaml|
    .*conversation.*|
    .*transcript.*|
    .*verbatim.*|
    .*chatgpt-.*
  )
}x.freeze

options = {
  scope: DEFAULT_SCOPE,
  extensions: [".md"],
  limit: nil,
  report_classification: nil,
  allow_open: false,
  marker_profile: "strict"
}

OptionParser.new do |parser|
  parser.banner = "Usage: audit_theorem_exactness_markers.rb [options]"
  parser.on("--scope PATH", "Scope directory or file to audit") do |path|
    options[:scope] = Pathname.new(path).expand_path(ROOT)
  end
  parser.on("--extensions LIST", "Comma-separated extensions to audit, default: md") do |list|
    options[:extensions] = list.split(",").map do |extension|
      extension = extension.strip
      extension.start_with?(".") ? extension : ".#{extension}"
    end
  end
  parser.on("--limit N", Integer, "Limit reported hits") do |limit|
    options[:limit] = limit
  end
  parser.on("--report-classification CLASS", "Only include this classification in reported_hits") do |classification|
    options[:report_classification] = classification
  end
  parser.on("--marker-profile NAME", "Marker profile: strict or prose, default: strict") do |profile|
    unless MARKER_PROFILES.key?(profile)
      raise OptionParser::InvalidArgument, "unknown marker profile #{profile.inspect}"
    end

    options[:marker_profile] = profile
  end
  parser.on("--allow-open", "Exit 0 even when proof-bearing markers remain") do
    options[:allow_open] = true
  end
end.parse!

marker_pattern = MARKER_PROFILES.fetch(options.fetch(:marker_profile))

hits = []
scope = options.fetch(:scope)
rg_pattern_source = RG_MARKER_PROFILES.fetch(options.fetch(:marker_profile))
rg_command = ["rg", "-n", "--no-heading", "--hidden", "--no-ignore", "-P"]
options[:extensions].each do |extension|
  rg_command << "-g"
  rg_command << "*#{extension}"
end
rg_command << "(?x:#{rg_pattern_source})"
rg_command << scope.to_s

stdout, status = Open3.capture2(*rg_command)
unless status.success? || status.exitstatus == 1
  warn "rg content scan failed for #{scope}"
  exit 2
end

stdout.each_line do |entry|
  entry = entry.chomp
  next if entry.strip.empty?

  match = entry.match(/\A(.+?):(\d+):(.*)\z/)
  next unless match

  path = Pathname.new(match[1]).expand_path(ROOT)
  line_number = match[2].to_i
  line = match[3]
  relative = path.relative_path_from(ROOT).to_s
  classification =
    if relative.match?(SAMPLE_EVIDENCE_PATH_PATTERN)
      "sample-evidence-support"
    elsif relative.match?(HISTORICAL_OR_VERBATIM_PATH_PATTERN)
      "historical-or-verbatim-support"
    elsif relative.match?(SESSION_OR_CONVERSATION_SUPPORT_PATH_PATTERN)
      "session-or-conversation-support"
    elsif relative.match?(FORENSIC_OR_AUDIT_SUPPORT_PATH_PATTERN)
      "forensic-or-audit-support"
    elsif relative.match?(ARCHIVED_PRODUCTION_PATH_PATTERN)
      "archived-production-support"
    elsif relative.match?(GENERATED_BEHAVIOR_SUPPORT_PATH_PATTERN)
      "generated-behavior-support"
    elsif relative.match?(FORENSIC_RECOVERY_SUPPORT_PATH_PATTERN)
      "forensic-recovery-support"
    elsif relative.match?(DEPENDENCY_SUPPORT_PATH_PATTERN)
      "dependency-support"
    elsif relative.match?(OPERATIONAL_SUPPORT_PATH_PATTERN)
      "operational-support"
    elsif relative.match?(THREAD_OR_BEHAVIOR_SUPPORT_PATH_PATTERN)
      "thread-or-behavior-support"
    elsif relative.match?(EXPLORATORY_MATH_SUPPORT_PATH_PATTERN)
      "exploratory-math-support"
    elsif relative.match?(GENERATED_OR_ARCHIVE_SUPPORT_PATH_PATTERN)
      "generated-or-archive-support"
    elsif relative.match?(QUARANTINE_OR_INGEST_PATH_PATTERN)
      "quarantine-or-ingest-support"
    elsif relative.match?(TOOL_IMPLEMENTATION_PATH_PATTERN)
      "tool-implementation"
    elsif line.match?(SHELL_COLLAR_NOTATION_PATTERN)
      "shell-collar-notation"
    elsif RELATION_NOTATION_PATTERNS.any? { |pattern| line.match?(pattern) }
      "relation-notation"
    elsif line.match?(TYPOGRAPHIC_TILDE_PATTERN)
      "typographic-tilde"
    elsif line.match?(HOME_PATH_TILDE_PATTERN)
      "url-or-path-tilde"
    elsif line.match?(URL_OR_PATH_TILDE_PATTERN)
      "url-or-path-tilde"
    elsif APPROXIMATION_METHOD_LANGUAGE_PATTERNS.any? { |pattern| line.match?(pattern) }
      "approximation-method-language"
    elsif HONEST_GUESSWORK_LANGUAGE_PATTERNS.any? { |pattern| line.match?(pattern) }
      "honest-guesswork-support"
    else
      "proof-bearing-or-unclassified"
    end

  hits << {
    "path" => relative,
    "line" => line_number,
    "classification" => classification,
    "excerpt" => line.strip
  }
end

proof_hits = hits.select { |hit| hit.fetch("classification") == "proof-bearing-or-unclassified" }
reported_hits =
  if options[:report_classification]
    hits.select { |hit| hit.fetch("classification") == options[:report_classification] }
  else
    hits
  end
reported_hits = reported_hits.first(options[:limit]) if options[:limit]

payload = {
  "generated_at" => Time.now.utc.iso8601,
  "scope" => scope.relative_path_from(ROOT).to_s,
  "marker_profile" => options.fetch(:marker_profile),
  "strict_marker_file_count" => hits.map { |hit| hit.fetch("path") }.uniq.length,
  "proof_bearing_or_unclassified_file_count" => proof_hits.map { |hit| hit.fetch("path") }.uniq.length,
  "sample_evidence_support_file_count" => hits.select { |hit| hit.fetch("classification") == "sample-evidence-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "historical_or_verbatim_support_file_count" => hits.select { |hit| hit.fetch("classification") == "historical-or-verbatim-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "session_or_conversation_support_file_count" => hits.select { |hit| hit.fetch("classification") == "session-or-conversation-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "forensic_or_audit_support_file_count" => hits.select { |hit| hit.fetch("classification") == "forensic-or-audit-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "archived_production_support_file_count" => hits.select { |hit| hit.fetch("classification") == "archived-production-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "generated_behavior_support_file_count" => hits.select { |hit| hit.fetch("classification") == "generated-behavior-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "forensic_recovery_support_file_count" => hits.select { |hit| hit.fetch("classification") == "forensic-recovery-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "dependency_support_file_count" => hits.select { |hit| hit.fetch("classification") == "dependency-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "operational_support_file_count" => hits.select { |hit| hit.fetch("classification") == "operational-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "thread_or_behavior_support_file_count" => hits.select { |hit| hit.fetch("classification") == "thread-or-behavior-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "exploratory_math_support_file_count" => hits.select { |hit| hit.fetch("classification") == "exploratory-math-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "generated_or_archive_support_file_count" => hits.select { |hit| hit.fetch("classification") == "generated-or-archive-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "quarantine_or_ingest_support_file_count" => hits.select { |hit| hit.fetch("classification") == "quarantine-or-ingest-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "tool_implementation_file_count" => hits.select { |hit| hit.fetch("classification") == "tool-implementation" }.map { |hit| hit.fetch("path") }.uniq.length,
  "shell_collar_notation_file_count" => hits.select { |hit| hit.fetch("classification") == "shell-collar-notation" }.map { |hit| hit.fetch("path") }.uniq.length,
  "relation_notation_file_count" => hits.select { |hit| hit.fetch("classification") == "relation-notation" }.map { |hit| hit.fetch("path") }.uniq.length,
  "typographic_tilde_file_count" => hits.select { |hit| hit.fetch("classification") == "typographic-tilde" }.map { |hit| hit.fetch("path") }.uniq.length,
  "url_or_path_tilde_file_count" => hits.select { |hit| hit.fetch("classification") == "url-or-path-tilde" }.map { |hit| hit.fetch("path") }.uniq.length,
  "approximation_method_language_file_count" => hits.select { |hit| hit.fetch("classification") == "approximation-method-language" }.map { |hit| hit.fetch("path") }.uniq.length,
  "honest_guesswork_support_file_count" => hits.select { |hit| hit.fetch("classification") == "honest-guesswork-support" }.map { |hit| hit.fetch("path") }.uniq.length,
  "hit_count" => hits.length,
  "proof_bearing_or_unclassified_hit_count" => proof_hits.length,
  "reported_hits" => reported_hits
}

puts YAML.dump(payload)

exit 1 if proof_hits.any? && !options[:allow_open]
