class Kr < Formula
  desc "Build and test Apple projects with shared machine resource queues"
  homepage "https://github.com/bulai0408/homebrew-tap"
  url "https://github.com/bulai0408/homebrew-tap/releases/download/v0.1.4/kr-0.1.4-aarch64-apple-darwin.tar.gz"
  version "0.1.4"
  sha256 "2937b983f04030a0eee442872f7e82d7b66e8401b6d0739021aeabf0980f255d"

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
