class KaidoplanCli < Formula
  desc "Project planning CLI and MCP server for AI coding agents"
  homepage "https://ai.cygnusyang.top/kaidoplan/"
  url "https://github.com/cygnusyang/KaidoPlan/releases/download/v#{version}/kaidoplan-v#{version}-macos-universal.tar.gz"
  version "3.0.0"
  sha256 "45f167666a5c47e94efbc668c323f1389f1fcce6be75ddb34f8cf47129d6e13b"
  # KaidoPlan is proprietary since v3.0.0; Homebrew has no SPDX id for that.
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on macos: :sonoma

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/kaidoplan", "project", "create", "brew-test", "--file", testpath/"t.kaido"
    assert_path_exists testpath/"t.kaido"
  end
end
