class Iobend < Formula
  desc "Developer environment manager for diagnostics, setup, and DevOps automation"
  homepage "https://github.com/Iobend/iobend"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v2.0.0/IOBend-v2.0.0-macos-arm64.tar.gz"
      sha256 "8cc8425c2784980cbffd81c570c13165f0325e8d6c9956cda32bd5c197e1abb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v2.0.0/IOBend-v2.0.0-linux-arm64.tar.gz"
      sha256 "1e6f34bb30ec89ff5815e1f6894e3e00367501e5ebc82ac1ef3f6aef40236e24"
    end
    on_intel do
      url "https://github.com/Iobend/iobend/releases/download/v2.0.0/IOBend-v2.0.0-linux-x64.tar.gz"
      sha256 "acaaa38b768aefd5429133b397892e2e08115b70c0239a4c68a9bc2f5dc4a7d8"
    end
  end

  def install
    bin.install "iobend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iobend --version")
  end
end