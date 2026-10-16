class Kr < Formula
  desc "Build and test Apple projects with shared machine resource queues"
  homepage "https://github.com/bulai0408/homebrew-tap"
  url "https://github.com/bulai0408/homebrew-tap/releases/download/v0.1.0/kr-0.1.0-aarch64-apple-darwin.tar.gz"
  version "0.1.0"
  sha256 "801c4805f2cddcb89479d8573f053c409a4c3c1b19db6ff9669f6a6ae7aa5edd"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kr"
  end

  test do
    assert_equal "kr #{version}", shell_output("#{bin}/kr --version").strip
    assert_match "build and test Apple projects", shell_output("#{bin}/kr skill")
  end
end
