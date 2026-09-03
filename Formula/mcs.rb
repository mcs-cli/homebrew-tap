class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.9.3/mcs-2026.9.3-macos-universal.tar.gz"
  sha256 "cc6d05f6fc5fc53253bdb19754ea8b8aa940e3c7cfe929790105739402e0f8a5"
  version "2026.9.3"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
