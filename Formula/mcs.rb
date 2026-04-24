class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.24/mcs-2026.4.24-macos-universal.tar.gz"
  sha256 "249a05fc70856146d4031813498edabc77529563ab80592a8b546fcae441e42f"
  version "2026.4.24"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
