class Asciicam < Formula
  desc "Real-time ASCII Camera for your terminal"
  homepage "https://github.com/YaduEnc/AsciiCam"
  url "https://github.com/YaduEnc/ASCIICam/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e80cf9e1ccb232ff8f44a38e3e82573316e4aa43055a4b1a8f33b1a78a1cc112" # Calculate with: curl -L <url> | shasum -a 256
  license "MIT"

  depends_on "python@3.11"

  include Language::Python::Virtualenv

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/asciicam", "--version"
  end
end
