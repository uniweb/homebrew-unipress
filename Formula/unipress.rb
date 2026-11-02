class Unipress < Formula
  desc "Compile markdown into PDF, EPUB, DOCX, XLSX, or Typst via a Uniweb foundation"
  homepage "https://unipress.app"
  version "1.1.30"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-darwin-arm64"
      sha256 "a68f3d2b0678d414fe51fa7d7f78f60e92c83d785b4681d92f600941735986a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-linux-x64"
      sha256 "078eed76ad413c88a51d4f72ccbdcb6b4adbf6fdb7d0b02a7ac52d6ec4d468ee"
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
