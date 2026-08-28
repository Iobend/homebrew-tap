class Iobend < Formula
  desc "Developer environment manager for diagnostics, setup, and DevOps automation"
  homepage "https://github.com/Iobend/iobend"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Iobend/iobend-core/releases/download/v2.5.0/IOBend-v2.5.0-macos-arm64.tar.gz"
      sha256 "540252406d685d8416b475da0e065e93a418aab407494b57f5b8a6eb847a2d0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Iobend/iobend-core/releases/download/v2.5.0/IOBend-v2.5.0-linux-x64.tar.gz"
      sha256 "a44e7bda0ae285d0df5306a53538188b660f34ec33acadde990242817ad56336"
    end
  end

  def install
    bin.install "iobend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iobend --version")
  end
end