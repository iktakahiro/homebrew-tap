class Calendarpit < Formula
  desc "Local Google Calendar-compatible API and OAuth server for development"
  homepage "https://iktakahiro.github.io/calendarpit/"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.2/calendarpit-0.9.2-darwin-arm64.tar.gz"
      sha256 "9bb00dba131f1b23e5dda67ed7ea5786958aa3ccd70d67e1a7f190f903b44bfa"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.2/calendarpit-0.9.2-darwin-x64.tar.gz"
      sha256 "b8970daf9e48f5b00719ef9f220b89847c4224392be8fe0a35298d75f0e614af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.2/calendarpit-0.9.2-linux-arm64.tar.gz"
      sha256 "8fedbd2b44c00d28876117a3f35169fa199de1b43aeaa8e9e47c325e7ecfdf59"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.2/calendarpit-0.9.2-linux-x64.tar.gz"
      sha256 "b21e311c298cd6c910c3b0e7f4cde5050832cad27a3836c29ac2d609626e69ad"
    end
  end

  def install
    bin.install "bin/calendarpit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/calendarpit --version").strip
  end
end
