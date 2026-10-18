class Calendarpit < Formula
  desc "Local Google Calendar-compatible API and OAuth server for development"
  homepage "https://iktakahiro.github.io/calendarpit/"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.0/calendarpit-0.9.0-darwin-arm64.tar.gz"
      sha256 "8b57049665bd25f53eb6a2793c2359c1b900035f9b1bba8c2eb8bfd01431a22e"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.0/calendarpit-0.9.0-darwin-x64.tar.gz"
      sha256 "63524c046cec44876733f3804235bb5997f1836b9d62b62ae9fa33498fd275d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.0/calendarpit-0.9.0-linux-arm64.tar.gz"
      sha256 "5812e0c4117d35631772179f306eed30dee230f46607fc0a17887eedd2073332"
    end
    on_intel do
      url "https://github.com/iktakahiro/calendarpit/releases/download/v0.9.0/calendarpit-0.9.0-linux-x64.tar.gz"
      sha256 "f98b31b84b1634079ac12709431386ca252b27ed174369b324d72f9844ec329e"
    end
  end

  def install
    bin.install "bin/calendarpit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/calendarpit --version").strip
  end
end
