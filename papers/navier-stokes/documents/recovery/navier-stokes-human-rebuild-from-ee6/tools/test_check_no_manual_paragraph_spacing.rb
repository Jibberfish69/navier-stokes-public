#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "minitest/autorun"
require "open3"
require "rbconfig"
require "tmpdir"

class CheckNoManualParagraphSpacingTest < Minitest::Test
  CHECKER = File.expand_path("check_no_manual_paragraph_spacing.rb", __dir__)

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

  def test_accepts_blank_line_paragraphs_and_needspace
    source = "First paragraph.\n\nSecond paragraph.\n\\Needspace{6\\baselineskip}\n"
    _stdout, stderr, status = run_checker("Section2/example.tex" => source)

    assert status.success?, stderr
  end

  def test_rejects_local_vertical_spacing_commands
    commands = %w[vspace vspace* smallskip medskip bigskip addvspace vskip]

    commands.each do |command|
      source = "First paragraph.\n\\#{command}{4pt}\nSecond paragraph.\n"
      _stdout, stderr, status = run_checker("Section2/example.tex" => source)

      refute status.success?, "expected \\#{command} to fail"
      assert_includes stderr, "prohibited manual vertical spacing"
    end
  end

  def test_rejects_explicit_paragraph_break
    _stdout, stderr, status = run_checker("Section2/example.tex" => "First.\\par Second.\n")

    refute status.success?
    assert_includes stderr, "prohibited explicit paragraph break"
  end

  def test_rejects_local_display_spacing_assignments
    commands = %w[
      abovedisplayskip
      abovedisplayshortskip
      belowdisplayskip
      belowdisplayshortskip
      jot
    ]

    commands.each do |command|
      source = "Lead-in.\n\\setlength{\\#{command}}{4pt}\n\\[x=y\\]\n"
      _stdout, stderr, status = run_checker("Section2/example.tex" => source)

      refute status.success?, "expected \\#{command} to fail"
      assert_includes stderr, "prohibited local display-spacing override"
    end
  end

  def test_rejects_manual_display_row_spacing
    source = "\\[\n\\begin{aligned}\na&=b,\\\\[0.25em]\nc&=d.\n\\end{aligned}\n\\]\n"
    _stdout, stderr, status = run_checker("Section2/example.tex" => source)

    refute status.success?
    assert_includes stderr, "prohibited manual display-row spacing"
  end

  def test_ignores_comments_archives_and_preamble_macros
    files = {
      "Section2/example.tex" => "% \\vspace{4pt}\nPlain prose.\n",
      "Archive/old.tex" => "\\medskip\n",
      "preamble/macros.tex" => "\\newcommand{\\divider}{\\par\\vspace{1em}}\n\\setlength{\\jot}{4pt}\n"
    }
    _stdout, stderr, status = run_checker(files)

    assert status.success?, stderr
  end
end
