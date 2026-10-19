class Calendarpit < Formula
  desc "Local Google Calendar-compatible API and OAuth server for development"
  homepage "https://iktakahiro.github.io/calendarpit/"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.3/calendarpit-0.9.3-darwin-arm64.tar.gz"
      sha256 "da15d2aee71dafabffc69097b2502f09d5d077d6bec7550eb70c398220ab80bf"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.3/calendarpit-0.9.3-darwin-x64.tar.gz"
      sha256 "03029f9128c3fd265c08a8b4db21a09d1304fef755f268452ecbaf6b0c37cc2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.3/calendarpit-0.9.3-linux-arm64.tar.gz"
      sha256 "23007e3bf5f95bb8d21060c5d0b864c12a4dc82ddda94f10cf06cf3b6acdb47f"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.3/calendarpit-0.9.3-linux-x64.tar.gz"
      sha256 "a7c8fa884a96b0a708feb100bf1a693801e227ee4b97355bb4f60e84e3800c01"
    end
  end

  def install
    bin.install "bin/calendarpit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/calendarpit --version").strip
  end
end
