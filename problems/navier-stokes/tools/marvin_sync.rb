#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "pathname"
require "time"
require "yaml"

ROOT = Pathname.new(ENV.fetch("RESEARCH_CONSOLIDATION_ROOT", "/Users/thomasbirnie/Documents/Research-Consolidation")).freeze
PROBLEM_ROOT = ROOT.join("problems/navier-stokes").freeze
WATCHLIST_PATH = PROBLEM_ROOT.join("marvin-watchlist.yaml").freeze
SOURCE_DISCOVERY_PATH = PROBLEM_ROOT.join("marvin-source-discovery.yaml").freeze
ADAPTATION_NOTES_PATH = PROBLEM_ROOT.join("marvin-adaptation-notes.md").freeze
TANDEM_CROSSWALK_PATH = PROBLEM_ROOT.join("monograph-V6-tandem-crosswalk.yaml").freeze
LEGACY_TANDEM_CROSSWALK_PATH = PROBLEM_ROOT.join("marvin-v6-tandem-crosswalk.yaml").freeze
CHAT_STATUS_PATH = PROBLEM_ROOT.join("chat-status.yaml").freeze
ROUTE_LOCK_PATH = PROBLEM_ROOT.join("route-lock.yaml").freeze
BRIDGE_SLOT_MAP_PATH = PROBLEM_ROOT.join("bridge-slot-map.yaml").freeze
PIPELINE_HARDENER_PATH = PROBLEM_ROOT.join("tools/ns_pipeline_hardener.rb").freeze
RUNTIME_META = PROBLEM_ROOT.join("runtime/meta").freeze
STATE_PATH = RUNTIME_META.join("marvin-sync-state.yaml").freeze
HEARTBEAT_PATH = RUNTIME_META.join("marvin-sync-heartbeat.yaml").freeze
PID_PATH = RUNTIME_META.join("marvin-sync.pid").freeze
STOP_PATH = RUNTIME_META.join("MARVIN_SYNC_STOP").freeze
LOG_PATH = RUNTIME_META.join("marvin-sync.log").freeze

AUTO_SECTION_START = "<!-- AUTO_INGEST_STATUS:START -->"
AUTO_SECTION_END = "<!-- AUTO_INGEST_STATUS:END -->"

def utc_now
  Time.now.utc.iso8601
end

def load_yaml(path)
  YAML.load_file(path.to_s) || {}
end

def write_yaml(path, object)
  path.write(YAML.dump(object))
end

def ensure_runtime!
  FileUtils.mkdir_p(RUNTIME_META)
end

def read_watchlist
  load_yaml(WATCHLIST_PATH)
end

def read_route_lock
  load_yaml(ROUTE_LOCK_PATH)
end

def read_bridge_slot_map
  load_yaml(BRIDGE_SLOT_MAP_PATH)
end

def scan_files(watchlist)
  roots = Array(watchlist.fetch("watch_roots", []))
  roots.flat_map do |root|
    path = Pathname.new(root)
    if path.file?
      [path]
    elsif path.directory?
      path.glob("**/*").select(&:file?)
    else
      []
    end
  end
end

def file_text(path)
  path.read
rescue StandardError
  ""
end

def relevance_for(path, text, terms)
  lowered = text.downcase
  term_hits = terms.count { |term| lowered.include?(term.downcase) }
  basename = path.basename.to_s
  category =
    if basename.include?("ObstructionAlgebraizationBridge")
      "high-synthesis"
    elsif basename.include?("SupportExtractionDescent")
      "low"
    elsif term_hits.positive?
      "medium-synthesis"
    else
      "low"
    end
  [term_hits, category]
end

def trackable_file?(path, term_hits)
  basename = path.basename.to_s
  explicit_allowlist = [
    "TheEntirePictureWorkingSpine",
    "ObstructionAlgebraizationBridge",
    "SupportExtractionDescent",
    "ScaleResolution_Extracts",
    "main.txt"
  ]
  term_hits.positive? || explicit_allowlist.any? { |token| basename.include?(token) }
end

def classify_decision(path, category)
  basename = path.basename.to_s
  if basename.include?("ObstructionAlgebraizationBridge")
    ["promoted-as-refresh-of-existing-curvature-obstruction-skeleton",
     "The refreshed obstruction/curvature note sharpens the fourth-bridge and warrant-side obstruction language already used locally."]
  elsif basename.include?("SupportExtractionDescent")
    ["observed-but-not-promoted",
     "This contribution is support-extraction / torsor-descent work and is tracked as watched sidecar material rather than an active Navier-Stokes bridge input."]
  elsif category == "low"
    ["observed-but-not-promoted",
     "Observed in the V6 watch roots, but it does not currently sharpen a named Navier-Stokes bridge strongly enough to promote."]
  else
    ["promoted-as-synthesis-refresh",
     "This V6 note sharpens local bridge semantics and is promoted as synthesis rather than direct proof authority."]
  end
end

def matched_slots(path, text, slot_map)
  lowered = "#{path.basename} #{text}".downcase
  Array(slot_map.fetch("slots", [])).each_with_object([]) do |slot, acc|
    terms = Array(slot["terms"])
    acc << slot["slot_id"] if terms.any? { |term| lowered.include?(term.downcase) }
  end
end

def import_bucket_for(path)
  source = path.to_s
  if source.include?("/monograph-V6/problems/navier-stokes/")
    "candidate-direct-v6-ns-source"
  else
    "synthesis-only"
  end
end

def tandem_crosswalk_document(contribs)
  doc = load_yaml(TANDEM_CROSSWALK_PATH)
  doc["identity"] ||= {}
  doc["identity"]["generated_at"] = utc_now
  doc["identity"]["generator"] = "lane-local-marvin-sync"
  doc["shared_current_state"] ||= {}
  doc["shared_current_state"]["recent_observed_contributions"] = contribs.map { |entry| entry["path"] }
  doc["shared_current_state"]["current_import_reading"] = contribs.first(3).map do |entry|
    "#{Pathname.new(entry['path']).basename}: #{entry['import_decision']}"
  end
  doc
end

def legacy_tandem_crosswalk_document(canonical_doc)
  doc = Marshal.load(Marshal.dump(canonical_doc))
  doc["identity"] ||= {}
  doc["identity"]["artifact_id"] = "marvin-v6-tandem-crosswalk"
  doc["identity"]["mirror_of"] = TANDEM_CROSSWALK_PATH.to_s
  doc
end

def recent_contributions(files, terms, slot_map)
  contributions = files.each_with_object([]) do |path, acc|
    text = file_text(path)
    term_hits, category = relevance_for(path, text, terms)
    next unless trackable_file?(path, term_hits)

    decision, note = classify_decision(path, category)
    slots = matched_slots(path, text, slot_map)
    acc << {
      "path" => path.to_s,
      "observed_at" => utc_now,
      "last_modified_at" => path.stat.mtime.utc.iso8601,
      "ns_relevance" => category,
      "term_hit_count" => term_hits,
      "matched_slots" => slots,
      "import_bucket" => import_bucket_for(path),
      "import_decision" => decision,
      "note" => note
    }
  end
  contributions.sort_by { |entry| File.mtime(entry["path"]) }.reverse.first(8)
end

def update_source_discovery!(contribs, route_lock)
  doc = load_yaml(SOURCE_DISCOVERY_PATH)
  doc["identity"] ||= {}
  doc["identity"]["generated_at"] = utc_now
  doc["identity"]["generator"] = "lane-local-marvin-sync"
  doc["summary"] ||= {}
  doc["summary"]["route_lock_present"] = !route_lock.empty?
  doc["summary"]["primary_route_locked"] = route_lock.dig("primary_route", "route_id") == "source-grounded-four-bridge"
  doc["summary"]["recent_import_bucket_summary"] =
    contribs.each_with_object(Hash.new(0)) { |entry, acc| acc[entry["import_bucket"]] += 1 }
  doc["summary"]["recent_slot_summary"] =
    contribs.flat_map { |entry| Array(entry["matched_slots"]) }.each_with_object(Hash.new(0)) { |slot, acc| acc[slot] += 1 }
  doc["recent_contributions"] = contribs
  write_yaml(SOURCE_DISCOVERY_PATH, doc)
end

def update_watchlist!(contribs)
  doc = load_yaml(WATCHLIST_PATH)
  doc["status"] ||= {}
  doc["status"]["mode"] = "active-watch"
  doc["status"]["last_scan_at"] = utc_now
  doc["status"]["last_scan_result"] = "updated"
  doc["status"]["recent_observed_paths"] = contribs.map { |entry| entry["path"] }
  write_yaml(WATCHLIST_PATH, doc)
end

def update_tandem_crosswalk!(contribs)
  canonical_doc = tandem_crosswalk_document(contribs)
  write_yaml(TANDEM_CROSSWALK_PATH, canonical_doc)
  write_yaml(LEGACY_TANDEM_CROSSWALK_PATH, legacy_tandem_crosswalk_document(canonical_doc))
end

def update_adaptation_notes!(contribs)
  body = ADAPTATION_NOTES_PATH.read
  summary_lines = contribs.first(5).map do |entry|
    slots = Array(entry["matched_slots"])
    slot_suffix = slots.empty? ? "no named slot hit" : "slots: #{slots.join(', ')}"
    "- `#{Pathname.new(entry['path']).basename}`: `#{entry['import_decision']}` (`#{entry['ns_relevance']}`; #{slot_suffix})"
  end
  generated = <<~MD
    #{AUTO_SECTION_START}
    ## Auto-Ingest Status

    Last scan: `#{utc_now}`

    Recent watched V6 contributions:

    #{summary_lines.join("\n")}
    #{AUTO_SECTION_END}
  MD

  if body.include?(AUTO_SECTION_START) && body.include?(AUTO_SECTION_END)
    body.sub!(/#{Regexp.escape(AUTO_SECTION_START)}.*#{Regexp.escape(AUTO_SECTION_END)}/m, generated.strip)
  else
    body = "#{body.rstrip}\n\n#{generated}"
  end

  ADAPTATION_NOTES_PATH.write(body)
end

def update_chat_status!
  doc = load_yaml(CHAT_STATUS_PATH)
  doc["updated_at"] = utc_now
  doc["note"] = "Daemon healthy; route-lock enforced; lane-local Marvin sync watcher active; tandem surfaces auto-refreshing from watched V6 roots and the legacy Marvin-V6 mirror kept in lockstep"
  write_yaml(CHAT_STATUS_PATH, doc)
end

def run_pipeline_hardener!
  return unless PIPELINE_HARDENER_PATH.exist?

  system("ruby", PIPELINE_HARDENER_PATH.to_s, "refresh")
end

def write_state!(contribs, mode:)
  write_yaml(
    STATE_PATH,
    {
      "version" => 1,
      "problem_id" => "navier-stokes",
      "updated_at" => utc_now,
      "mode" => mode,
      "recent_observed_paths" => contribs.map { |entry| entry["path"] }
    }
  )
end

def write_heartbeat!(status:, detail:)
  write_yaml(
    HEARTBEAT_PATH,
    {
      "version" => 1,
      "problem_id" => "navier-stokes",
      "process_alive" => true,
      "status" => status,
      "updated_at" => utc_now,
      "detail" => detail
    }
  )
end

def sync_once
  ensure_runtime!
  watchlist = read_watchlist
  route_lock = read_route_lock
  slot_map = read_bridge_slot_map
  files = scan_files(watchlist)
  terms = Array(watchlist.fetch("watch_terms", []))
  contribs = recent_contributions(files, terms, slot_map)
  update_source_discovery!(contribs, route_lock)
  update_watchlist!(contribs)
  update_tandem_crosswalk!(contribs)
  update_adaptation_notes!(contribs)
  update_chat_status!
  run_pipeline_hardener!
  write_state!(contribs, mode: running_pid ? "daemon" : "scan")
  write_heartbeat!(status: "running", detail: "watched V6 roots scanned and tandem surfaces refreshed")
end

def running_pid
  return nil unless PID_PATH.exist?
  pid = PID_PATH.read.to_i
  return nil if pid <= 0

  Process.getpgid(pid)
  pid
rescue StandardError
  nil
end

def daemon_loop
  ensure_runtime!
  STDOUT.reopen(LOG_PATH.to_s, "a")
  STDERR.reopen(LOG_PATH.to_s, "a")
  STDOUT.sync = true
  STDERR.sync = true
  PID_PATH.write(Process.pid.to_s)
  STOP_PATH.delete if STOP_PATH.exist?

  trap("TERM") do
    write_heartbeat!(status: "stopped", detail: "terminated")
    PID_PATH.delete if PID_PATH.exist?
    STOP_PATH.delete if STOP_PATH.exist?
    exit 0
  end

  loop do
    break if STOP_PATH.exist?

    begin
      sync_once
    rescue StandardError => e
      write_heartbeat!(status: "error", detail: "#{e.class}: #{e.message}")
      warn("[marvin-sync] #{e.class}: #{e.message}")
    end
    sleep 60
  end

  write_heartbeat!(status: "stopped", detail: "stop requested")
  PID_PATH.delete if PID_PATH.exist?
  STOP_PATH.delete if STOP_PATH.exist?
end

def start_daemon
  ensure_runtime!
  return puts("already running: #{running_pid}") if running_pid

  pid = fork do
    Process.daemon(true, true)
    daemon_loop
  end
  Process.detach(pid)
  sleep 1
  puts("started")
end

def stop_daemon
  ensure_runtime!
  pid = running_pid
  unless pid
    puts("not running")
    return
  end

  STOP_PATH.write(utc_now)
  Process.kill("TERM", pid)
  puts("stop requested")
end

def status_daemon
  pid = running_pid
  state = STATE_PATH.exist? ? load_yaml(STATE_PATH) : {}
  heartbeat = HEARTBEAT_PATH.exist? ? load_yaml(HEARTBEAT_PATH) : {}
  puts(
    {
      running: !pid.nil?,
      pid: pid,
      state: state,
      heartbeat: heartbeat
    }.to_yaml
  )
end

command = ARGV[0] || "scan"

case command
when "scan"
  sync_once
  puts("scanned")
when "start"
  start_daemon
when "stop"
  stop_daemon
when "restart"
  stop_daemon
  10.times do
    break unless running_pid
    sleep 0.5
  end
  start_daemon
when "status"
  status_daemon
else
  warn("usage: ruby marvin_sync.rb [scan|start|stop|restart|status]")
  exit 1
end
