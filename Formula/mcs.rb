class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.6.16/mcs-2026.6.16-macos-universal.tar.gz"
  sha256 "931516e7b9217af877e88f98386be5b204323e19eb6c505dd0afaf3c228c8f02"
  version "2026.6.16"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
