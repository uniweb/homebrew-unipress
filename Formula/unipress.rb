class Unipress < Formula
  desc "Compile markdown into PDF, EPUB, DOCX, XLSX, or Typst via a Uniweb foundation"
  homepage "https://github.com/uniweb/unipress"
  version "0.2.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-darwin-arm64"
      sha256 "35e39ca43ec5f3c38f8dcc91178abce96e5a94fed0a863d16afa9c4cf6c2e7fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-linux-x64"
      sha256 "aaa4f5039dd199bdf018eb40737a13196efd8908b04678b603216c2e485676e2"
    end
  end

  def install
    arch_suffix = OS.mac? ? "darwin-arm64" : "linux-x64"
    bin.install "unipress-#{arch_suffix}" => "unipress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unipress --version")
  end
end
