class Unipress < Formula
  desc "Compile markdown into PDF, EPUB, DOCX, XLSX, or Typst via a Uniweb foundation"
  homepage "https://github.com/uniweb/unipress"
  version "0.2.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-darwin-arm64"
      sha256 "b6f55515726742f85cc32f3a315931a8b122ef39383b416230f7c28b0fd328ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/uniweb/unipress/releases/download/v#{version}/unipress-linux-x64"
      sha256 "27f8674cf3e1243fed2793bfc892b5281906a3a4a9c056e5c2869a7a05060966"
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
