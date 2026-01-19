class FlappyBird < Formula
  desc "A polished terminal-based Flappy Bird clone"
  homepage "https://github.com/YaduEnc/FlappyBirdTUI"
  url "https://github.com/YaduEnc/FlappyBirdTUI/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "392b396fb28c3ad6545c36b1b4a6bb70218203f4de1ac4fc9b48be4df20d5d20"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  include Language::Python::Virtualenv

  test do
    system "#{bin}/flappy-bird", "--version"
  end
end
