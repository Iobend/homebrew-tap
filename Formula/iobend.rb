class Iobend < Formula
  desc "Developer environment manager for diagnostics, setup, and DevOps automation"
  homepage "https://github.com/Iobend/iobend"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v2.1.0/IOBend-v2.1.0-macos-arm64.tar.gz"
      sha256 "489604efb712d8af5e38d0a66b9ce98314b6cae39fc7f2020728537fb694ced8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v2.1.0/IOBend-v2.1.0-linux-arm64.tar.gz"
      sha256 "0901d20d73965ee85ae3d77576f14307102a8ef6263abaa2c2578adabd3b7aa4"
    end
    on_intel do
      url "https://github.com/Iobend/iobend/releases/download/v2.1.0/IOBend-v2.1.0-linux-x64.tar.gz"
      sha256 "f5f2c045713aa2f9a5f5927b037366ae8bc6cef0f84762fa5f4e535b675e5804"
    end
  end

  def install
    bin.install "iobend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iobend --version")
  end
end