class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.19/mcs-2026.4.19-macos-universal.tar.gz"
  sha256 "ddf264d09a2617183ee59f7850647fe39bebec662df0947b05d0c6a99caf5abb"
  version "2026.4.19"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
