class Calendarpit < Formula
  desc "Local Google Calendar-compatible API and OAuth server for development"
  homepage "https://iktakahiro.github.io/calendarpit/"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.1/calendarpit-0.9.1-darwin-arm64.tar.gz"
      sha256 "6105ca9f42e7e2c0fde550cc669bc9916000c7ac64f21867f1ebf2e009aa0c11"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.1/calendarpit-0.9.1-darwin-x64.tar.gz"
      sha256 "09e98a1ed7ff599eb5e6057d9db3b4ebdf2334961def6660449dcd2c1836244f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.1/calendarpit-0.9.1-linux-arm64.tar.gz"
      sha256 "52d3d7a13805dea56cdcdc369a3c442da26a6c50139386dcf62207110213bbaa"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.1/calendarpit-0.9.1-linux-x64.tar.gz"
      sha256 "43214f649e8b0d1f52d3f321b17f88cdd42624372e4b81daf2249c99224157d1"
    end
  end

  def install
    bin.install "bin/calendarpit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/calendarpit --version").strip
  end
end
