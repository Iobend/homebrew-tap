class Iobend < Formula
  desc "Developer environment manager for diagnostics, setup, and DevOps automation"
  homepage "https://github.com/Iobend/iobend"
  license "MIT"
  version "1.0.5"

  on_macos do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v1.0.5/IOBend-v1.0.5-macos-arm64.tar.gz"
      sha256 "7608e6767cd477e59103fa01cb63c8368f1ad00ff74de9bced875e61b95cf324"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v1.0.5/IOBend-v1.0.5-linux-arm64.tar.gz"
      sha256 "fb273610c53d3961a54d5322e03934165ce1835f80b657b0705b96f89aec8094"
    end
    on_intel do
      url "https://github.com/Iobend/iobend/releases/download/v1.0.5/IOBend-v1.0.5-linux-x64.tar.gz"
      sha256 "e31933251f055bcf9f5791396ed057704d536a4dccf687164ba561afcfe217c0"
    end
  end

  def install
    bin.install "iobend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iobend --version")
  end
end