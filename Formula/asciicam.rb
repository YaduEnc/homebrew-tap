class Asciicam < Formula
  desc "Real-time ASCII Camera for your terminal"
  homepage "https://github.com/YaduEnc/AsciiCam"
  url "https://github.com/YaduEnc/ASCIICam/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "f754e0d5f35a0d18de176d8c0e3f98ae549d20f7058f1dff5f692751aea78c99"
  license "MIT"

  depends_on "python@3.11"

  include Language::Python::Virtualenv

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install buildpath
    venv.pip_install "opencv-python", "numpy", "Pillow"
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/asciicam", "--version"
  end
end
