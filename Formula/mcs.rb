class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.28/mcs-2026.4.28-macos-universal.tar.gz"
  sha256 "c8cb0e01201861b4b2aaf0074077d5b07b1e49c43fa86447e52c48cf3fcc65aa"
  version "2026.4.28"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
