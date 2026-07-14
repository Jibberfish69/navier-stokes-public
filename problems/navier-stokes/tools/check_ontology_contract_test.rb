#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "minitest/autorun"
require "pathname"
require "tmpdir"

require_relative "check_ontology_contract"

class OntologyContractCheckerTest < Minitest::Test
  ROOT = OntologyContractChecker.default_root
  RELEVANT_PATHS = %w[
    problems/navier-stokes/ontology.md
    problems/navier-stokes/ontology-write-contract.yaml
    problems/navier-stokes/ontology-archive/ontology-detailed-through-cycle-154-20260714.md
    problems/navier-stokes/target-operating-contract.yaml
  ].freeze

  def test_live_contract_passes
    assert_empty OntologyContractChecker.new(root: ROOT).run
  end

  def test_rejects_map_growth_past_the_cap
    with_fixture_root do |root|
      path = root.join("problems/navier-stokes/ontology.md")
      File.open(path, "a") { |file| 701.times { file.puts "growth" } }
      errors = OntologyContractChecker.new(root: root).run
      assert errors.any? { |error| error.include?("exceeds") && error.include?("lines") }
    end
  end

  def test_rejects_frozen_snapshot_mutation
    with_fixture_root do |root|
      path = root.join("problems/navier-stokes/ontology-archive/ontology-detailed-through-cycle-154-20260714.md")
      File.open(path, "a") { |file| file.puts "mutation" }
      errors = OntologyContractChecker.new(root: root).run
      assert errors.any? { |error| error.include?("snapshot SHA changed") }
    end
  end

  def test_rejects_a_missing_legacy_address
    with_fixture_root do |root|
      path = root.join("problems/navier-stokes/ontology.md")
      content = path.read
      content.sub!(/^- <a id="f11-[^\n]+\n/, "")
      path.write(content)
      errors = OntologyContractChecker.new(root: root).run
      assert errors.any? { |error| error.include?("legacy catalog fact count changed") }
    end
  end

  def test_rejects_an_incomplete_post_cutover_card
    with_fixture_root do |root|
      path = root.join("problems/navier-stokes/ontology.md")
      content = path.read.sub(
        "None. A future card may be added",
        "### F7.121 Incomplete card\n\n- **Claim:** only one field\n\nA future card may be added"
      )
      path.write(content)
      errors = OntologyContractChecker.new(root: root).run
      assert errors.any? { |error| error.include?("F7.121 is missing Scope") }
    end
  end

  private

  def with_fixture_root
    Dir.mktmpdir("ontology-contract") do |directory|
      root = Pathname(directory)
      RELEVANT_PATHS.each do |relative|
        source = ROOT.join(relative)
        destination = root.join(relative)
        FileUtils.mkdir_p(destination.dirname)
        FileUtils.cp(source, destination)
      end
      yield root
    end
  end
end
