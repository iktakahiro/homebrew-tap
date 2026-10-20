class Calendarpit < Formula
  desc "Local Google Calendar-compatible API and OAuth server for development"
  homepage "https://iktakahiro.github.io/calendarpit/"
  version "0.9.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.5/calendarpit-0.9.5-darwin-arm64.tar.gz"
      sha256 "d43283ac836f01b6064ab8656d20370047bb5492a446efe59749eeae41edb0c6"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.5/calendarpit-0.9.5-darwin-x64.tar.gz"
      sha256 "843ba55e4709cb147d9756f51e36232ad630fc1d05f60fbe3c2a742c07f87df9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.5/calendarpit-0.9.5-linux-arm64.tar.gz"
      sha256 "dc7a5ff6c72241a306cde5db1c688c2696e21dcbf0da06d6b5cde439466707cc"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.5/calendarpit-0.9.5-linux-x64.tar.gz"
      sha256 "78c181c1caf74a62c71d508e0f26c342c048ec1898b8329ec1e2f8ab17c3e2ff"
    end
  end

  def install
    bin.install "bin/calendarpit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/calendarpit --version").strip
  end
end
