class Yutto < Formula
  include Language::Python::Virtualenv

  desc ":ice_cube: 一个可爱且任性的 B 站视频下载器（bilili2.x）"
  homepage "https://github.com/SigureMo/yutto"
  url "https://github.com/SigureMo/yutto/archive/refs/tags/v2.0.0-beta.9.zip"
  sha256 "eb5a26d5c34c1b5f1964d572d1240ba8492c0bbcdd18978480d04d0b453024a4"
  license "GPL-3.0"

  depends_on "python@3.10"
  depends_on "ffmpeg"

  def install
    virtualenv_install_with_resources
  end
end
