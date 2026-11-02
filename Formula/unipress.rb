class Unipress < Formula
  desc "Compile markdown into PDF, EPUB, DOCX, XLSX, or Typst via a Uniweb foundation"
  homepage "https://unipress.app"
  version "1.1.29"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-darwin-arm64"
      sha256 "441d91d6fb8711fa8e0e16747a2087ce096ba58d44dbee8a4c1a7d14662224d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-linux-x64"
      sha256 "56a06bfda15102c103c87d285cf248f8dd58d991704e7cac10064699d59b569b"
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
