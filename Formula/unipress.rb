class Unipress < Formula
  desc "Compile markdown into PDF, EPUB, DOCX, XLSX, or Typst via a Uniweb foundation"
  homepage "https://github.com/uniweb/unipress"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/uniweb/unipress/releases/download/unipress@#{version}/unipress-darwin-arm64"
      sha256 "d44b83d0142130dc45cf1b7a70896fb9644a0cd83f27bfa7953ce7e36a8eade7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/uniweb/unipress/releases/download/unipress@#{version}/unipress-linux-x64"
      sha256 "93c12bda846e57e860365aaed2ee2ab044bf0ba36f0def6acca442fadfc5652e"
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
