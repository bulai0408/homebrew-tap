class Kr < Formula
  desc "Build and test Apple projects with shared machine resource queues"
  homepage "https://github.com/bulai0408/homebrew-tap"
  url "https://github.com/bulai0408/homebrew-tap/releases/download/v0.1.1/kr-0.1.1-aarch64-apple-darwin.tar.gz"
  version "0.1.1"
  sha256 "5daa86c89794df6145e08bb383c6f78473165772ba095230bdea515bba29d686"

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
