#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "minitest/autorun"
require "open3"
require "rbconfig"
require "tmpdir"

class CheckAppendixDerivationReferencesTest < Minitest::Test
  CHECKER = File.expand_path("check_appendix_derivation_references.rb", __dir__)

  def run_checker(files)
    Dir.mktmpdir do |root|
      files.each do |relative_path, content|
        path = File.join(root, relative_path)
        FileUtils.mkdir_p(File.dirname(path))
        File.write(path, content)
      end
      return Open3.capture3(RbConfig.ruby, CHECKER, root)
    end
  end

  def base_files(body:, appendix: proof_appendix)
    {
      "navier-stokes-manuscript.tex" => "\\begin{document}\n\\input{body.tex}\n\\appendix\n\\input{support/appendix.tex}\n\\end{document}\n",
      "body.tex" => body,
      "support/appendix.tex" => appendix
    }
  end

  def proof_appendix(label = "prop:EnergyIdentity")
    <<~TEX
      \\begin{proposition}\\label{#{label}}
      The kinetic-energy identity holds.
      \\end{proposition}
      \\begin{proof}
      The cancellations and integration by parts give the identity.
      \\end{proof}
    TEX
  end

  def test_accepts_same_sentence_reference_to_proof_bearing_appendix_result
    files = base_files(body: "The energy identity in \\Cref{prop:EnergyIdentity} gives the bound.\n")
    _stdout, stderr, status = run_checker(files)

    assert status.success?, stderr
  end

  def test_accepts_typed_appendix_label
    appendix = proof_appendix.sub("\\label{prop:EnergyIdentity}", "\\label[proposition]{prop:EnergyIdentity}")
    files = base_files(body: "The energy identity in \\Cref{prop:EnergyIdentity} gives the bound.\n", appendix: appendix)
    _stdout, stderr, status = run_checker(files)

    assert status.success?, stderr
  end

  def test_rejects_compressed_claim_without_reference
    files = base_files(body: "The energy identity gives the bound.\n")
    _stdout, stderr, status = run_checker(files)

    refute status.success?
    assert_includes stderr, "body.tex:1: compressed internal result"
  end

  def test_rejects_reference_to_body_result
    body = "\\begin{proposition}\\label{prop:BodyIdentity}Body.\\end{proposition}\nThe identity in \\Cref{prop:BodyIdentity} gives the bound.\n"
    files = base_files(body: body)
    _stdout, stderr, status = run_checker(files)

    refute status.success?
    assert_includes stderr, "body.tex:1: compressed internal result"
  end

  def test_rejects_appendix_equation_without_proof_bearing_formal_result
    appendix = "\\begin{equation}x=y\\label{eq:EnergyIdentity}\\end{equation}\n"
    files = base_files(body: "The identity in \\Cref{eq:EnergyIdentity} gives the bound.\n", appendix: appendix)
    _stdout, stderr, status = run_checker(files)

    refute status.success?
  end

  def test_rejects_duplicate_appendix_label
    appendix = proof_appendix + proof_appendix
    files = base_files(body: "The identity in \\Cref{prop:EnergyIdentity} gives the bound.\n", appendix: appendix)
    _stdout, _stderr, status = run_checker(files)

    refute status.success?
  end

  def test_rejects_formal_result_without_proof
    appendix = "\\begin{proposition}\\label{prop:EnergyIdentity}Statement.\\end{proposition}\n"
    files = base_files(body: "The identity in \\Cref{prop:EnergyIdentity} gives the bound.\n", appendix: appendix)
    _stdout, _stderr, status = run_checker(files)

    refute status.success?
  end

  def test_accepts_externally_sourced_result
    files = base_files(body: "The endpoint criterion gives regularity \\parencite{PrimarySource}.\n")
    _stdout, stderr, status = run_checker(files)

    assert status.success?, stderr
  end

  def test_catches_claim_split_across_source_lines
    body = "The energy identity controls the motion and\n gives the required bound.\n"
    files = base_files(body: body)
    _stdout, stderr, status = run_checker(files)

    refute status.success?
    assert_includes stderr, "body.tex:1: compressed internal result"
  end

  def test_follows_nested_appendix_input_outside_appendices_directory
    files = {
      "navier-stokes-manuscript.tex" => "\\begin{document}\n\\input{body.tex}\n\\appendix\n\\input{support/index.tex}\n\\end{document}\n",
      "body.tex" => "The identity in \\Cref{prop:EnergyIdentity} gives the bound.\n",
      "support/index.tex" => "\\input{shared/derivation.tex}\n",
      "shared/derivation.tex" => proof_appendix
    }
    _stdout, stderr, status = run_checker(files)

    assert status.success?, stderr
  end

  def test_ignores_comments_front_matter_and_inactive_files
    files = base_files(body: "% The identity gives the bound.\nPlain body prose.\n")
    files["front.tex"] = "The identity gives the bound.\n"
    files["inactive.tex"] = "The estimate gives another bound.\n"
    files["navier-stokes-manuscript.tex"] = "\\begin{document}\n\\input{FrontMatter/front.tex}\n\\input{body.tex}\n\\appendix\n\\input{support/appendix.tex}\n\\end{document}\n"
    _stdout, stderr, status = run_checker(files.transform_keys { |path| path == "front.tex" ? "FrontMatter/front.tex" : path })

    assert status.success?, stderr
  end
end
