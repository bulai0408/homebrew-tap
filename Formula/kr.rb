class Kr < Formula
  desc "Build and test Apple projects with shared machine resource queues"
  homepage "https://github.com/bulai0408/homebrew-tap"
  url "https://github.com/bulai0408/homebrew-tap/releases/download/v0.1.3/kr-0.1.3-aarch64-apple-darwin.tar.gz"
  version "0.1.3"
  sha256 "93929539ac77ece036f984c19e21ee2a3d0db2939b672895a8bfb48d8c5adb8f"

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
