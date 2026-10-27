class Kr < Formula
  desc "Build and test Apple projects with shared machine resource queues"
  homepage "https://github.com/bulai0408/homebrew-tap"
  url "https://github.com/bulai0408/homebrew-tap/releases/download/v0.1.2/kr-0.1.2-aarch64-apple-darwin.tar.gz"
  version "0.1.2"
  sha256 "aea5f80752cc05abd80af876554aef1a7609ad7d4e3cb4096d6583260ee81f4f"

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
