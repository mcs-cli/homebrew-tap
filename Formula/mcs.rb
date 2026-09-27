class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.9.27/mcs-2026.9.27-macos-universal.tar.gz"
  sha256 "12e7220d59b306da6cb80377ea5380eb726f87a0e9ffe17c7135a47af785b60c"
  version "2026.9.27"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
