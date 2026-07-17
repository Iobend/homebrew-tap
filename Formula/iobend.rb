class Iobend < Formula
  desc "Developer environment manager for diagnostics, setup, and DevOps automation"
  homepage "https://github.com/Iobend/iobend"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v1.0.5/IOBend-v1.0.5-macos-arm64.tar.gz"
      sha256 "2b5776f7a259735b1c2017283ce71dbcb087e0f82f43d743f799a560bd9195f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v1.0.5/IOBend-v1.0.5-linux-arm64.tar.gz"
      sha256 "9e81d74a55347879849b2cb99f4b03eff6f7bce01d6fa3fc8babeaf93903f95a"
    end
    on_intel do
      url "https://github.com/Iobend/iobend/releases/download/v1.0.5/IOBend-v1.0.5-linux-x64.tar.gz"
      sha256 "531733cd163ef32f9390aaf937b67aaa34d6d3885a379b101d452372df38b2af"
    end
  end

  def install
    bin.install "iobend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iobend --version")
  end
end