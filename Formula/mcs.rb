class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.9.26/mcs-2026.9.26-macos-universal.tar.gz"
  sha256 "5c12bbf1179ec14f48fe1ff8db3be135d7e967123920888da120c1cfea372136"
  version "2026.9.26"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
