class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.9.25/mcs-2026.9.25-macos-universal.tar.gz"
  sha256 "7bf735b078856b405de4d1d4528cd2f0e269eb5e53c5d7b9e75397d1cd6d8aaa"
  version "2026.9.25"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
