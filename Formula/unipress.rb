class Unipress < Formula
  desc "Compile markdown into PDF, EPUB, DOCX, XLSX, or Typst via a Uniweb foundation"
  homepage "https://unipress.app"
  version "1.1.21"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-darwin-arm64"
      sha256 "2afd194854e7a5baa669d589bfcd6b2c46ee99e7f1db69dce23d8d0a328670d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-linux-x64"
      sha256 "e2b203ba9ae3d98c79c2393308e59cda176a17471d02fc1bc7411efefb9012ed"
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
