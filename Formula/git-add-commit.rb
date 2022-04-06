# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitAddCommit < Formula
  desc "Commit made easy"
  homepage "https://github.com/rawnly/git-add-commit"
  version "0.0.6"
  license "MIT"

  on_macos do
    url "https://github.com/rawnly/git-add-commit/releases/download/0.0.6/GitAddCommit_0.0.6_Darwin_all.tar.gz"
    sha256 "c0fbd15c52080a8be0eceb457ff0409ec6f93db31a6be3360c90d62d86863b54"

    def install
      bin.install "git-add-commit"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rawnly/git-add-commit/releases/download/0.0.6/GitAddCommit_0.0.6_Linux_arm64.tar.gz"
      sha256 "593edd82f431f3f288e0962a4597fd813501ebdddf2a83ef691d8c1d67284234"

      def install
        bin.install "git-add-commit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rawnly/git-add-commit/releases/download/0.0.6/GitAddCommit_0.0.6_Linux_x86_64.tar.gz"
      sha256 "51b0fe9c5066ae6c6a689a4bc607cc72c80ec09b1d5f455241d05de2b07af85a"

      def install
        bin.install "git-add-commit"
      end
    end
  end

  depends_on "git"

  def caveats; <<~EOS
    git-add-commit [message]
  EOS
  end
end