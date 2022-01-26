class Yutto < Formula
  include Language::Python::Virtualenv

  desc ":ice_cube: 一个可爱且任性的 B 站视频下载器（bilili2.x）"
  homepage "https://github.com/SigureMo/yutto"
  url "https://github.com/SigureMo/yutto/archive/refs/tags/v2.0.0-beta.9.tar.gz"
  sha256 "c4881d637fa732c72ffd15e179cd3e60bd269981a449019711f8c9eca3d0a658"
  license "GPL-3.0"

  depends_on "ffmpeg"
  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end
end
