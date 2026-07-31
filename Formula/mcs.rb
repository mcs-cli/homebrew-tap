class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.7.30/mcs-2026.7.30-macos-universal.tar.gz"
  sha256 "e7076ada5cd749aca5ea61770bfd935c80b597052f4f5600e80612944f4fb390"
  version "2026.7.30"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
