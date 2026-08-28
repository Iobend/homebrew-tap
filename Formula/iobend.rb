class Iobend < Formula
  desc "Developer environment manager for diagnostics, setup, and DevOps automation"
  homepage "https://github.com/Iobend/iobend"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v2.5.0/IOBend-v2.5.0-macos-arm64.tar.gz"
      sha256 "e44f724dbecaeacd2eb179bbc91a1b5b79ad8f24c793cde08752151f606886f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Iobend/iobend/releases/download/v2.5.0/IOBend-v2.5.0-linux-x64.tar.gz"
      sha256 "4686edd26c8cea3d9f24236f8f516144cf87058c2d7efc13eba86a705e1695e2"
    end
  end

  def install
    bin.install "iobend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iobend --version")
  end
end
