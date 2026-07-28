class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.7.28/mcs-2026.7.28-macos-universal.tar.gz"
  sha256 "1d44c7264705e23db7a37b307fc903b336919148fd4e3cadcf2de254d708e70d"
  version "2026.7.28"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
