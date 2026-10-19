class Calendarpit < Formula
  desc "Local Google Calendar-compatible API and OAuth server for development"
  homepage "https://iktakahiro.github.io/calendarpit/"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.4/calendarpit-0.9.4-darwin-arm64.tar.gz"
      sha256 "62dfa5e065fa0b8351a778de0f4e2fc54f460f732462d3c5f5b8b9ca0e4389b4"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.4/calendarpit-0.9.4-darwin-x64.tar.gz"
      sha256 "55e3ea933ce1a38742272d0c6694fad33b090d12384dc2aea0ee8e8be2c35a66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.4/calendarpit-0.9.4-linux-arm64.tar.gz"
      sha256 "3d936824a2615c33cf64d2d133727a537d7c6a25bae2c0f588dbd761540c45d5"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.4/calendarpit-0.9.4-linux-x64.tar.gz"
      sha256 "9079cdce5e69ab22bf2f27aebbf29ca23d929252f8f2f3fc2df2529cc422ba91"
    end
  end

  def install
    bin.install "bin/calendarpit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/calendarpit --version").strip
  end
end
