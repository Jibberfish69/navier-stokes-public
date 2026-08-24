#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "minitest/autorun"
require "open3"
require "rbconfig"
require "tmpdir"

class CheckNoBoxFormattingTest < Minitest::Test
  CHECKER = File.expand_path("check_no_box_formatting.rb", __dir__)

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

  def test_rejects_boxed_mathematics
    _stdout, stderr, status = run_checker("section.tex" => "\\[\\boxed{x=y}\\]\n")

    refute status.success?
    assert_includes stderr, "section.tex:1: prohibited boxed mathematics"
  end

  def test_rejects_framed_callout_environment
    source = "\\begin{mdframed}\nA callout.\n\\end{mdframed}\n"
    _stdout, stderr, status = run_checker("section.tex" => source)

    refute status.success?
    assert_includes stderr, "section.tex:1: prohibited framed environment"
  end

  def test_accepts_unframed_display_and_italics
    source = "\\[x=y\\]\n\\begin{center}\\emph{A consequence.}\\end{center}\n"
    _stdout, stderr, status = run_checker("section.tex" => source)

    assert status.success?, stderr
  end

  def test_ignores_comments_and_excluded_archives
    files = {
      "section.tex" => "% \\boxed{commented example}\nPlain prose.\n",
      "Archive/old.tex" => "\\boxed{archived material}\n"
    }
    _stdout, stderr, status = run_checker(files)

    assert status.success?, stderr
  end
end
