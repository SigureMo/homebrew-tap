# How to update this formula?
# See [Python-for-Formula-Authors](https://docs.brew.sh/Python-for-Formula-Authors).
# 1. Update url and sha256 field refer to [PyPI](https://pypi.org/project/<pkg>/#files).
# 2. Run `brew update-python-resources <formula>` to write resource stanzas.

class Yutto < Formula
  include Language::Python::Virtualenv

  desc ":ice_cube: 一个可爱且任性的 B 站视频下载器（bilili2.x）"
  homepage "https://github.com/SigureMo/yutto"
  url "https://files.pythonhosted.org/packages/f3/d6/ebb4dda1bed72f896ca9a4c57303a885590b187cf84123c7d6898d7be350/yutto-2.0.0b28.tar.gz"
  sha256 "8cdf4a0d08c46937fb0540ed19dd3b5b74ed8a344acc3f92b4c45e2e65f8408d"
  license "GPL-3.0"

  depends_on "ffmpeg"
  depends_on "python@3.11"

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/40/a0/07be94aecba162ed5147359f9883e82afd2ac13aed33678a008fc8c36f8b/aiofiles-23.1.0.tar.gz"
    sha256 "edd247df9a19e0db16534d4baaf536d6609a43e1de5401d7a4c1c148753a1635"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/c2/fd/1ff4da09ca29d8933fda3f3514980357e25419ce5e0f689041edb8f17dab/aiohttp-3.8.4.tar.gz"
    sha256 "bf2e1a9162c1e441bf805a1fd166e249d574ca04e03b34f97e2928769e91ab5c"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/ae/67/0952ed97a9793b4958e5736f6d2b346b414a2cd63e82d05940032f45b32f/aiosignal-1.3.1.tar.gz"
    sha256 "54cd96e15e1649b75d6c87526a6ff0b6c1b0dd3459f43d9ca11d48c339b68cfc"
  end

  resource "async-timeout" do
    url "https://files.pythonhosted.org/packages/54/6e/9678f7b2993537452710ffb1750c62d2c26df438aa621ad5fa9d1507a43a/async-timeout-4.0.2.tar.gz"
    sha256 "2163e1640ddb52b7a8c80d0a67a08587e5d245cc9c553a74a847056bc2976b15"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/97/90/81f95d5f705be17872843536b1868f351805acf6971251ff07c1b8334dbb/attrs-23.1.0.tar.gz"
    sha256 "6279836d581513a26f1bf235f9acd333bc9115683f14f7e8fae46c98fc50e015"
  end

  resource "biliass" do
    url "https://files.pythonhosted.org/packages/2c/30/b334fe79f725cadb2b3f4b59f271e56e4cfdc6853d73995710f6d2e5d7ef/biliass-1.3.7.tar.gz"
    sha256 "3fb2b76edf0c5c3e87a09eddb90f651bdf728f4955c27f52a84102fd352e74ae"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/2a/53/cf0a48de1bdcf6ff6e1c9a023f5f523dfe303e4024f216feac64b6eb7f67/charset-normalizer-3.2.0.tar.gz"
    sha256 "3bb3d25a8e6c0aedd251753a79ae98a093c7e7b471faa3aa9a93a81431987ace"
  end

  resource "dict2xml" do
    url "https://files.pythonhosted.org/packages/59/19/2e36329ad47671bd3701cf5dbb94b09fdc407d9635c75131f200ee6ec7dc/dict2xml-1.7.3.tar.gz"
    sha256 "02a5c198d0fecdfeb52644e9d905200a36c031e11c201362d7d217df684bc15d"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/8c/1f/49c96ccc87127682ba900b092863ef7c20302a2144b3185412a08480ca22/frozenlist-1.4.0.tar.gz"
    sha256 "09163bdf0b2907454042edb19f887c6d33806adc71fbd54afc14908bfdc22251"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/4a/15/bd620f7a6eb9aa5112c4ef93e7031bcd071e0611763d8e17706ef8ba65e0/multidict-6.0.4.tar.gz"
    sha256 "3666906492efb76453c0e7b97f2cf459b0682e7402c0489a95484965dbc1da49"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/e2/4f/4bfe731c9491938b832997892577445bc16cef1f1ee450918b77ea370af7/protobuf-4.24.0rc1.tar.gz"
    sha256 "540db58fd0b77e3617cce9fa8202a616584a20f80db399c88255d1fa275eeb1a"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/3c/8b/0111dd7d6c1478bf83baa1cab85c686426c7a6274119aceb2bd9d35395ad/typing_extensions-4.7.1.tar.gz"
    sha256 "b75ddc264f0ba5615db7ba217daeb99701ad295353c45f9e95963337ceeeffb2"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/5f/3f/04b3c5e57844fb9c034b09c5cb6d2b43de5d64a093c30529fd233e16cf09/yarl-1.9.2.tar.gz"
    sha256 "04ab9d4b9f587c06d801c2abfe9317b77cdf996c65a90d5e84ecc45010823571"
  end

  def install
    virtualenv_install_with_resources
  end

  # test do
  #   # TODO: some command likes `yutto run-checks`
  # end
end
