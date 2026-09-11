class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.9.11/mcs-2026.9.11-macos-universal.tar.gz"
  sha256 "628f31578b93d9d2fd7e93c3908613a35d3d7d1529e7e47115f326e1bab435e7"
  version "2026.9.11"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
