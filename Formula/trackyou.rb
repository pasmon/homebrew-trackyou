class Trackyou < Formula
  desc "Track your time spent on tasks"
  homepage "https://github.com/pasmon/trackyou"
  version "0.7.0"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pasmon/trackyou/releases/download/v#{version}/trackyou_Darwin_arm64.tar.gz"
      sha256 "ab7a8b1cca3a4ecc8f09ec4dfa978419faec1f10c39fea4a29be456040c88872"
    else
      url "https://github.com/pasmon/trackyou/releases/download/v#{version}/trackyou_Darwin_x86_64.tar.gz"
      sha256 "d5fb8269cd1332937843ccf2640db3d5f30a70fc4874a7f75525625e9bb188d3"
    end
  end

  def install
    bin.install "trackyou"
    doc.install "README.md", "LICENSE"
  end

  test do
    assert_predicate bin/"trackyou", :exist?
  end
end
