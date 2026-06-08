#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
BUNDLE_ROOT = ROOT.join("problems/navier-stokes/submission-bundle")
MAIN_TEX = BUNDLE_ROOT.join("navier-stokes-submission.tex")
SURFACE_APPENDIX = BUNDLE_ROOT.join("surface-derivation-appendix.tex")
SOURCE_FIELD_APPENDIX = BUNDLE_ROOT.join("source-field-reader-appendix.tex")
SOURCE_FORENSICS_ROOT = ROOT.join("problems/navier-stokes/source-forensics")
PROOF_ATTEMPT_MIN_SOURCE_WORDS = 19_000
SOURCE_FIELD_MIN_SOURCE_WORDS = 300_000
MAX_REPEATED_APPENDIX_BLOCK = 25
SECRET_TOKEN_PATTERN = /\b(?:sk-(?:proj-)?[A-Za-z0-9_-]{20,}|OPENAI_API_KEY=(?:"sk-[^"\s]+"|'sk-[^'\s]+'))\b/.freeze
CODEX_MAIN_TEX = ROOT.join("papers/navier-stokes/manuscript/generated/main.tex")
CODEX_ACCREDITED_APPENDIX_INPUTS = %w[
  referee-proof-details.tex
  referee-proof-expansion.tex
].freeze
CODEX_DEFENSIVE_SECTION_TITLE = /\A(?:What\b.*\bDoes\b|\bNo\b|\bCannot\b|\bWhy\b.*\bNot\b|\bObjection\b|\bReferee Proof Details\b|\bExpanded Logical Skeleton\b)/i.freeze
CODEX_DEFENSIVE_LEAD_PATTERN = /\b(?:does not|cannot|should not|must not|not a|not an|not enough|rather than|instead of|is not|are not)\b/i.freeze
CODEX_MAX_DEFENSIVE_LEADS = 3
CODEX_MAX_DEFENSIVE_SENTENCES = 35

FORBIDDEN_VISIBLE_PATTERNS = {
  "internal path string" => %r{problems/navier-stokes|submission-bundle|source-forensics|theorem-construction|system/runner},
  "file extension in rendered argument" => /\.(?:md|ya?ml|rb|py)\b/i,
  "repo/status vocabulary in rendered argument" => /\b(?:repo-surface|generated surface|surface-derivation|coverage ledger|build record|status surface|audit row|provenance inventory|Family row|companion return note)\b/i,
  "stale open theorem claim" => /\b(?:proof still needs the noncircular endpoint exclusion|Clay-facing conclusion still needs|not yet a Clay counterexample-exclusion theorem|No theorem closure is claimed here|proof can be completed only by proving the missing bridge|stop presenting the classified class exit as a completed proof)\b/i,
  "unfinished proof wording" => /\b(?:proof still needs|record still needs|live proof still needs|full CM-contrapositive proof still needs)\b/i,
  "authoring-meta section" => /\b(?:Representation Standard|Obstruction Census|proof records|working records|Working manuscript)\b/i,
  "visible code/provenance typewriter" => /\\texttt\{/,
  "escaped source math residue" => /\\textbackslash\{\}|\\textasciicircum\{\}|\b(?:begin|end|substack|boxed|texttt)\(|\binL\^|\bSothe\b|\bimplies[A-Z]/,
  "visible source-storage language" => /\bon disk\b|\brepo\b/i,
  "glued source sentence residue" => /\b(?:first-rungledger|viscousfirst|notapressure|isalgebraically)\b/i,
  "dangling source-reference tail" => /\b(?:recorded|localized|isolated|captured|supplied|reduced|shown|proved|closed)\s+(?:separately\s+)?(?:in|by)\s*(?:\n\s*){0,2}(?:\\subsection\{|$)|\b(?:one of the following|all of the following|the following|reopened at|narrows the next target to|the exact remaining theorem burden is still):\s*(?:\n\s*){0,2}(?:\\subsection\{|$)|\bcoming from\s*(?:\n\s*){0,2}(?:\\subsection\{|$)|\bthe companion [a-z-]+ note\s*(?:\n\s*){0,2}(?:\\subsection\{|$)/i,
  "theorem-generation prompt residue" => /\b(?:Define or prove|score=-?\d+|Create the sharp|Extract the residual defect|Classify its invariant data|full-MPP closure|submission readiness|ChatGPT|loop closure audit|this run reached|requested equivalent form|requested sequence)\b/i,
  "placeholder branch symbol" => /\b[BS]_\{\d+\}/,
  "alien service wording" => /\bservices?\b/i,
  "anonymous branch-boilerplate phrase" => /\bat this place in the exhaustion\b/i,
  "anonymous selected-branch boilerplate" => /Let\s+\\\(B_\{\d+\}\\\)\s+be the selected terminal branch/i,
  "anonymous support-boilerplate phrase" => /Let\s+\\\(S_\{\d+\}\\\)\s+be the support obligation/i,
  "false proof-attempt placement claim" => /\bfailure record belongs before the CM payoff\b/i,
  "not-but prose" => /\bnot\b[^.\n]{0,160}\bbut\b/i
}.freeze

SOURCE_FIELD_DISPLAY_MATH_LABEL = /
  \b[A-Z][A-Za-z0-9]*(?:\.[A-Za-z0-9_{}\\]+)+\b|
  \b[A-Z][a-z]+(?:[A-Z][A-Za-z0-9]+){1,}\b|
  \b(?:Pack|Part|Field|Member|Exit|OriginalSmoothData|SourcePulseExclusion|
  LocalPositiveSourceCarleson|PositiveSourceDepletion|TerminalSourceCoherence|
  ActiveVorticityCoherence|ScaleInvariantParent|PositiveActiveCarlesonReserve|
  ScaleCriticalTreeCarleson|SquareSourceEstimate|DiffuseParentEntropyCharge|
  EntropyCarleson|Jumpavg|JumpAvg|EndNS|NOHOP|HFG|PCTP|READ|COVER|
  DTC|SCF|TTU|FPC|FFPB|FFSRC|FCI|LCI|CSP|OFP|CFI|CJ|ORIGIN|AVG|
  ATD|SGC|BASAC|ASAC|FIRP|SSE)\b
/x.freeze
SOURCE_FIELD_DISPLAY_PROSE_SPACE = /[A-Za-z]\\ [A-Za-z]|=>/.freeze
SOURCE_FIELD_DISPLAY_TEXT_BOX = /\\boxed.*\\text\{|\\text\{[^{}]*[_^][^{}]*\}/m.freeze
SOURCE_FIELD_DISPLAY_ASCII_MATH = /<=|>=|\bint_\d|\b[A-Za-z]+_(?:[A-Za-z]{2,}|\{[A-Za-z]{2,}\})|\/[a-z]{4,}/.freeze
SOURCE_FIELD_TABLE_RESIDUE = /^\s*\|[^|\n]{1,160}\|[^|\n]{1,160}\|/.freeze
SOURCE_FIELD_NOTE_STATUS_RESIDUE = /^(?:Status|Claimed status)\s*:|\bcurrent status\s*:|\b(?:the prompt asks|new prompt|requested prompt|readback|release YAML|YAMLs|this note records)\b/i.freeze
SOURCE_FIELD_DANGLING_SENTENCE_TAIL = /(?::|\b(?:with|where|thus|hence|therefore)|\b(?:does not|do not|did not|cannot|must|would|should|could)\s+(?:supply|prove|yield|give|show|force|produce|close))\s*$/i.freeze

CURRENT_MAIN_ANCHORS = [
  "\\section{Original Problem Statement}",
  "\\section{Gold Standard Approach (Explained) + Live Example}",
  "\\section{Reaching Obstruction}",
  "\\section{Reframing the Problem}",
  "\\section{Exhaustive Failure List}",
  "\\section{Generally Classifying Failure Types From the List}",
  "\\section{Silver Standard Approach}",
  "\\section{Defining Class Membership}",
  "\\section{Participation and One-Field Coherence Witness Laws}",
  "\\section{Packet Witness Law}",
  "\\section{Packet Failure Types}",
  "\\section{Velocity Failure Types}",
  "\\section{The Contrapositive Logic}",
  "\\section{Simplifying The Witness Logic Table}",
  "\\section{The Class-Law Proof}",
  "\\section{The Clay-Facing CM Completion}",
  "\\section{Forward Families As Support Examples}",
  "\\section{Branch-Family Support Exhaustion}",
  "\\section{The Support Boundary}",
  "\\section{Comparison And Transfer Boundary}",
  "\\section{Mathematical Branch Coverage}",
  "\\section{The Closing Hinges}",
  "\\section{Branch Derivation Patterns}"
].freeze

PROOF_ATTEMPT_ANCHORS = [
  "\\section{Proof Attempts And Failures To Prove Smoothness}",
  "\\subsection{The Page-24 Failure-Record Contract}",
  "\\subsection{Expanded Branch Work Packets}",
  "\\subsection{How The Record Enters The Proof}",
  "\\subsection{Branch-To-Face Conversion Checks}",
  "\\subsection{Reading Rules For The Failure Record}",
  "\\subsection{The Attempt Chain In Reader Order}",
  "\\subsection{The Four-Body Attempt}",
  "\\subsection{Body I: Scale Barrier}",
  "\\subsection{Body II: The \\(Q(t)\\) Functional}",
  "\\subsection{Body III: Non-Sobolev Compactness}",
  "\\subsection{Body IV: Curvature Or Gradient Recovery}",
  "\\subsection{The First Full Failure Of The Circuit}",
  "\\subsection{Modernized Four-Body Packet}",
  "\\subsection{Two Survivor Families}",
  "\\subsection{Kernelized Lifted Band}",
  "\\subsection{Shell Gain And The Half-Derivative Target}",
  "\\subsection{Cumulative Tail Stress And LPAS}",
  "\\subsection{Volterra And Lower-Triangular Memory}",
  "\\subsection{Signed Descent And The Limits Of Cancellation}",
  "\\subsection{Persistent Quotient Kill Attempts}",
  "\\subsection{Projected Flow, TPS, And SG.4}",
  "\\subsection{The Source-Wall Deletion Cycle}",
  "\\subsection{BASAC And The Terminal Atom}",
  "\\subsection{Pressure Sustain And Pure Pressure Residue}",
  "\\subsection{Angular Saturation}",
  "\\subsection{Transported Boundary And No Incoming Flux}",
  "\\subsection{Quantized Parent And Zeno Ancestry}",
  "\\subsection{Local Energy And Elliptic Time Smearing}",
  "\\subsection{All Reduced Source-Wall Routes}",
  "\\subsection{Source Reserve Birth}",
  "\\subsection{Zero-Moment Signed Pair}",
  "\\subsection{Public \\(L^3\\), Duhamel, And Native Source}",
  "\\subsection{Terminal Leray Saturation}",
  "\\subsection{Critical \\(H^{1/2}\\)}",
  "\\subsection{What The Failed Attempts Have In Common}",
  "\\subsection{How The Class-Membership Route Uses The Failure Record}",
  "\\subsection{Branch Role Table}",
  "\\subsection{Closure Of The Failure Record}"
].freeze

LEGACY_ANCHORS = [
  "\\section{The Navier--Stokes MPP And The Proof Contract}",
  "\\section{The Proof Spine Before Details}",
  "\\section{The Positive Route Meets The Source Wall}",
  "\\section{The Working Class Object}",
  "\\section{Terminal Packet Capture}",
  "\\section{Class Exit}",
].freeze

APPENDIX_ANCHORS = [
  "\\section{Expanded CM Branch Obligations}",
  "\\section{Expanded Forward-Support Obligations}",
  "\\section{Expanded Branch-Family Obligations}"
].freeze

def strip_comments(text)
  text.lines.map do |line|
    escaped = false
    cut = line.length
    line.chars.each_with_index do |char, index|
      if char == "\\" && !escaped
        escaped = true
        next
      end
      if char == "%" && !escaped
        cut = index
        break
      end
      escaped = false
    end
    line[0...cut]
  end.join
end

def visible_body(path)
  text = path.read
  body = text[/\\begin\{document\}(.*)\\end\{document\}/m, 1] || text
  strip_comments(body)
end

def strip_surface_appendix_input(body)
  body
    .gsub("\\input{surface-derivation-appendix.tex}", "")
    .gsub("\\input{../surface-derivation-appendix.tex}", "")
    .gsub(/\\IfFileExists\{surface-derivation-appendix\.tex\}\{\}\{\}/, "")
    .gsub(/\\IfFileExists\{surface-derivation-appendix\.tex\}\{\\input\{surface-derivation-appendix\.tex\}\}\{\\input\{\.\.\/surface-derivation-appendix\.tex\}\}/, "")
end

def required_anchors_for(path)
  return CURRENT_MAIN_ANCHORS if path == MAIN_TEX

  []
end

def scan_body(path, body, errors)
  FORBIDDEN_VISIBLE_PATTERNS.each do |label, pattern|
    if (match = body.match(pattern))
      errors << "#{path.relative_path_from(ROOT)}:#{line_number(body, match.begin(0))}: forbidden #{label}: #{match[0].strip}"
    end
  end
end

def line_number(text, offset)
  text[0...offset].count("\n") + 1
end

def rough_word_count(text)
  text
    .gsub(/\\[a-zA-Z@]+\*?(?:\[[^\]]*\])?(?:\{[^{}]*\})?/, " ")
    .gsub(/\\./, " ")
    .scan(/[A-Za-z0-9]+(?:[-'][A-Za-z0-9]+)*/)
    .length
end

def normalized_appendix_blocks(text)
  text
    .split(/\n{2,}/)
    .map(&:strip)
    .select { |block| block.match?(/\\emph\{(?:Claim|Proof|Reader-facing role)\.\}/) }
    .map do |block|
      block
        .gsub(/(?:CM|Support) obligation \d+/i, '\0')
        .gsub(/(?:CM|Support) family \d+/i, '\0')
        .gsub(/\b\d+\b/, "N")
        .gsub(/\s+/, " ")
        .strip
    end
end

def scan_repeated_appendix_blocks(path, visible, errors)
  repeated = normalized_appendix_blocks(visible)
             .group_by(&:itself)
             .select { |_block, occurrences| occurrences.length > MAX_REPEATED_APPENDIX_BLOCK }
  repeated.each do |block, occurrences|
    preview = block.gsub(/[{}\\]/, "").slice(0, 180)
    errors << "#{path.relative_path_from(ROOT)}: repeated proof boilerplate appears #{occurrences.length} times after number normalization: #{preview}"
  end
end

def scan_source_field_display_math(path, visible, errors)
  visible.to_enum(:scan, /\\\[(.*?)\\\]/m).each do
    display_match = Regexp.last_match
    block = display_match[1]
    next unless block.match?(SOURCE_FIELD_DISPLAY_MATH_LABEL) ||
                block.match?(SOURCE_FIELD_DISPLAY_PROSE_SPACE) ||
                block.match?(SOURCE_FIELD_DISPLAY_TEXT_BOX) ||
                block.match?(SOURCE_FIELD_DISPLAY_ASCII_MATH)

    preview = block.gsub(/\s+/, " ").strip.slice(0, 180)
    errors << "#{path.relative_path_from(ROOT)}:#{line_number(visible, display_match.begin(0))}: source-field display math contains theorem-label residue: #{preview}"
  end
end

def scan_source_field_prose_residue(path, visible, errors)
  prose = visible.gsub(/\\\[(.*?)\\\]/m, "")
  [
    ["markdown/table residue", SOURCE_FIELD_TABLE_RESIDUE],
    ["source-note status/prompt residue", SOURCE_FIELD_NOTE_STATUS_RESIDUE],
    ["dangling sentence tail", SOURCE_FIELD_DANGLING_SENTENCE_TAIL]
  ].each do |label, pattern|
    next unless (match = prose.match(pattern))

    preview = match[0].gsub(/\s+/, " ").strip.slice(0, 180)
    errors << "#{path.relative_path_from(ROOT)}: source-field prose contains #{label}: #{preview}"
  end
end

def scan_for_secret_literals(root, errors)
  return unless root.exist?

  root.find do |path|
    next unless path.file?
    next if path.extname.empty? || [".md", ".txt", ".yaml", ".yml", ".json", ".tex"].include?(path.extname)

    path.read.each_line.with_index(1) do |line, line_no|
      next unless line.match?(SECRET_TOKEN_PATTERN)

      errors << "#{path.relative_path_from(ROOT)}:#{line_no}: source forensics contains an unredacted secret literal"
    end
  end
end

def tex_section_blocks(body)
  matches = body.enum_for(:scan, /\\(?:section|subsection)\*?\{([^}]*)\}/).map do
    match = Regexp.last_match
    {
      title: match[1].gsub(/\\[a-zA-Z]+/, "").gsub(/[{}]/, "").strip,
      start: match.begin(0),
      body_start: match.end(0)
    }
  end
  matches.each_with_index.map do |entry, index|
    stop = matches[index + 1]&.fetch(:start) || body.length
    entry.merge(text: body[entry.fetch(:body_start)...stop].to_s)
  end
end

def first_sentences(text, count)
  text
    .gsub(/\\\[(.*?)\\\]/m, " ")
    .gsub(/\\begin\{[^}]+\}.*?\\end\{[^}]+\}/m, " ")
    .gsub(/\\[a-zA-Z]+\*?(?:\[[^\]]*\])?(?:\{[^{}]*\})?/, " ")
    .gsub(/\\./, " ")
    .split(/(?<=[.!?])\s+/)
    .map { |sentence| sentence.gsub(/\s+/, " ").strip }
    .reject(&:empty?)
    .first(count)
end

def scan_codex_machine_paper_voice(path, errors)
  return unless path.exist?

  visible = strip_comments(path.read)
  CODEX_ACCREDITED_APPENDIX_INPUTS.each do |input|
    if visible.include?("\\input{#{input}}")
      errors << "#{path.relative_path_from(ROOT)}: Codex machine paper imports accreted proof-detail appendix #{input}"
    end
  end

  defensive_leads = []
  tex_section_blocks(visible).each do |section|
    if section.fetch(:title).match?(CODEX_DEFENSIVE_SECTION_TITLE)
      errors << "#{path.relative_path_from(ROOT)}: defensive Codex section title remains visible: #{section.fetch(:title)}"
    end

    lead = first_sentences(section.fetch(:text), 2).join(" ")
    next unless lead.match?(CODEX_DEFENSIVE_LEAD_PATTERN)

    defensive_leads << "#{section.fetch(:title)}: #{lead.slice(0, 180)}"
  end

  if defensive_leads.length > CODEX_MAX_DEFENSIVE_LEADS
    errors << "#{path.relative_path_from(ROOT)}: #{defensive_leads.length} Codex section leads open defensively; maximum #{CODEX_MAX_DEFENSIVE_LEADS}: #{defensive_leads.first(6).join(' | ')}"
  end

  prose = visible
          .gsub(/\\\[(.*?)\\\]/m, " ")
          .gsub(/\\begin\{[^}]+\}.*?\\end\{[^}]+\}/m, " ")
  defensive_sentences = prose.split(/(?<=[.!?])\s+/).count { |sentence| sentence.match?(CODEX_DEFENSIVE_LEAD_PATTERN) }
  if defensive_sentences > CODEX_MAX_DEFENSIVE_SENTENCES
    errors << "#{path.relative_path_from(ROOT)}: #{defensive_sentences} defensive/contrast sentences in Codex machine paper; maximum #{CODEX_MAX_DEFENSIVE_SENTENCES}"
  end
end

errors = []
scan_for_secret_literals(SOURCE_FORENSICS_ROOT, errors)
scan_codex_machine_paper_voice(CODEX_MAIN_TEX, errors)

[MAIN_TEX].each do |path|
  next unless path.exist?

  body = visible_body(path)
  appendix_include_position = body.index("surface-derivation-appendix.tex")
  scan_body(path, strip_surface_appendix_input(body), errors)

  if path == MAIN_TEX && appendix_include_position.nil?
    errors << "#{path.relative_path_from(ROOT)}: missing proof-role source-field expansion appendix input"
  end

  legacy_visible = LEGACY_ANCHORS.select { |anchor| body.include?(anchor) }
  unless legacy_visible.empty?
    errors << "#{path.relative_path_from(ROOT)}: stale dependency-forward contract headings remain visible: #{legacy_visible.join(', ')}"
  end

  positions = required_anchors_for(path).map do |anchor|
    [anchor, body.index(anchor)]
  end
  missing = positions.select { |_anchor, position| position.nil? }
  missing.each do |anchor, _position|
    errors << "#{path.relative_path_from(ROOT)}: missing current PDF contract anchor #{anchor}"
  end

  positions.each_cons(2) do |(left_anchor, left_position), (right_anchor, right_position)|
    next if left_position.nil? || right_position.nil?
    next if left_position < right_position

    errors << "#{path.relative_path_from(ROOT)}: current PDF contract order violation #{left_anchor} must precede #{right_anchor}"
  end

  proof_attempt_position = body.index("proof-attempt-failure-appendix.tex")
  if path == MAIN_TEX && proof_attempt_position.nil?
    errors << "#{path.relative_path_from(ROOT)}: missing proof-attempt failure appendix input"
  end

  if path == MAIN_TEX
    branch_pattern_position = body.index("\\section{Branch Derivation Patterns}")
    if proof_attempt_position && branch_pattern_position && proof_attempt_position < branch_pattern_position
      errors << "#{path.relative_path_from(ROOT)}: proof-attempt failure appendix must follow branch derivation patterns"
    end
    if proof_attempt_position && appendix_include_position && appendix_include_position < proof_attempt_position
      errors << "#{path.relative_path_from(ROOT)}: source-field expansion appendix must follow proof-attempt failure appendix"
    end
  end
end

if BUNDLE_ROOT.join("proof-attempt-failure-appendix.tex").exist?
  visible = strip_comments(BUNDLE_ROOT.join("proof-attempt-failure-appendix.tex").read)
  proof_attempt_words = rough_word_count(visible)
  if proof_attempt_words < PROOF_ATTEMPT_MIN_SOURCE_WORDS
    errors << "problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex: proof-attempt appendix is too shallow: #{proof_attempt_words} source words, minimum #{PROOF_ATTEMPT_MIN_SOURCE_WORDS}"
  end

  positions = PROOF_ATTEMPT_ANCHORS.map { |anchor| [anchor, visible.index(anchor)] }
  positions.select { |_anchor, position| position.nil? }.each do |anchor, _position|
    errors << "problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex: missing proof-attempt contract anchor #{anchor}"
  end
  positions.each_cons(2) do |(left_anchor, left_position), (right_anchor, right_position)|
    next if left_position.nil? || right_position.nil?
    next if left_position < right_position

    errors << "problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex: proof-attempt order violation #{left_anchor} must precede #{right_anchor}"
  end
else
  errors << "problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex: missing proof-attempt failure appendix"
end

if SOURCE_FIELD_APPENDIX.exist?
  visible = strip_comments(SOURCE_FIELD_APPENDIX.read)
  source_field_words = rough_word_count(visible)
  if source_field_words < SOURCE_FIELD_MIN_SOURCE_WORDS
    errors << "#{SOURCE_FIELD_APPENDIX.relative_path_from(ROOT)}: source-field appendix is too shallow: #{source_field_words} source words, minimum #{SOURCE_FIELD_MIN_SOURCE_WORDS}"
  end
  scan_body(SOURCE_FIELD_APPENDIX, visible, errors)
  scan_source_field_display_math(SOURCE_FIELD_APPENDIX, visible, errors)
  scan_source_field_prose_residue(SOURCE_FIELD_APPENDIX, visible, errors)
else
  errors << "#{SOURCE_FIELD_APPENDIX.relative_path_from(ROOT)}: missing source-field reader appendix"
end

if SURFACE_APPENDIX.exist?
  visible = strip_comments(SURFACE_APPENDIX.read)
  scan_body(SURFACE_APPENDIX, visible, errors)
  scan_repeated_appendix_blocks(SURFACE_APPENDIX, visible, errors)

  APPENDIX_ANCHORS.each do |anchor|
    unless visible.include?(anchor)
      errors << "#{SURFACE_APPENDIX.relative_path_from(ROOT)}: missing mathematical appendix anchor #{anchor}"
    end
  end

  APPENDIX_ANCHORS.each_cons(2) do |left_anchor, right_anchor|
    left_position = visible.index(left_anchor)
    right_position = visible.index(right_anchor)
    next if left_position.nil? || right_position.nil?
    next if left_position < right_position

    errors << "#{SURFACE_APPENDIX.relative_path_from(ROOT)}: appendix order violation #{left_anchor} must precede #{right_anchor}"
  end
else
  errors << "#{SURFACE_APPENDIX.relative_path_from(ROOT)}: missing mathematical surface expansion appendix"
end

if errors.empty?
  puts "PDF_ARGUMENT_HYGIENE OK"
else
  warn errors.join("\n")
  exit 1
end
