class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.5.28/mcs-2026.5.28-macos-universal.tar.gz"
  sha256 "1f905b8b2d7cec6781ebbceb7eca396da82805a752f65d3c021dc4fb6d17ce67"
  version "2026.5.28"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
