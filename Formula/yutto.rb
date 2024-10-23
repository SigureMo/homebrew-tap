# How to update this formula?
# See [Python-for-Formula-Authors](https://docs.brew.sh/Python-for-Formula-Authors).
# 1. Update url and sha256 field refer to [PyPI](https://pypi.org/project/<pkg>/#files).
# 2. Run `brew update-python-resources <formula>` to write resource stanzas.

class Yutto < Formula
  include Language::Python::Virtualenv

  desc ":ice_cube: 一个可爱且任性的 B 站视频下载器（bilili2.x）"
  homepage "https://github.com/SigureMo/yutto"
  url "https://files.pythonhosted.org/packages/66/1c/2e321a251d64aa8fc7fd8582cb885eb55f15d820ed2712c779b476ad50b0/yutto-2.0.0rc5.tar.gz"
  sha256 "748f9faf1ddd30c265a553da623c3151f13344fd5b9cb7ab3ac18de5eff6b124"
  license "GPL-3.0"

  depends_on "rust" => :build # for `biliass` and `pydantic-core`
  depends_on "ffmpeg"
  depends_on "python@3.13"

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/0b/03/a88171e277e8caa88a4c77808c20ebb04ba74cc4681bf1e9416c862de237/aiofiles-24.1.0.tar.gz"
    sha256 "22a075c9e5a3810f0c2e48f3008c94d68c65d763b9b03857924c99e57355166c"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/9f/09/45b9b7a6d4e45c6bcb5bf61d19e3ab87df68e0601fa8c5293de3542546cc/anyio-4.6.2.post1.tar.gz"
    sha256 "4c8bc31ccdb51c7f7bd251f51c609e038d63e34219b44aa86e47576389880b4c"
  end

  resource "biliass" do
    url "https://files.pythonhosted.org/packages/30/f4/18a6a150c2c427420d063c9e951fdc72cb533289273627b06579f70fc421/biliass-2.1.1.tar.gz"
    sha256 "8474dc6bb8c59457aa86a747df016f333d78150dd4653b23a69d747680d27f25"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/b0/ee/9b19140fe824b367c04c5e1b369942dd754c4c5462d5674002f75c4dedc1/certifi-2024.8.30.tar.gz"
    sha256 "bec941d2aa8195e248a60b31ff9f0558284cf01a52591ceda73ea9afffd69fd9"
  end

  resource "dict2xml" do
    url "https://files.pythonhosted.org/packages/07/b3/2db1b077f9a80d30d1729a0af69b7cef8ce5b45c77a1f0f9ebb01b9edce1/dict2xml-1.7.6.tar.gz"
    sha256 "3e4811f4ef7fca86dede6acf382268ff9bc5735a4aa0e21b465f6eb0c4e81732"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/f5/38/3af3d3633a34a3316095b39c8e8fb4853a28a536e55d347bd8d8e9a14b03/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
  end

  resource "h2" do
    url "https://files.pythonhosted.org/packages/2a/32/fec683ddd10629ea4ea46d206752a95a2d8a48c22521edd70b142488efe1/h2-4.1.0.tar.gz"
    sha256 "a83aca08fbe7aacb79fec788c9c0bac936343560ed9ec18b82a13a12c28d2abb"
  end

  resource "hpack" do
    url "https://files.pythonhosted.org/packages/3e/9b/fda93fb4d957db19b0f6b370e79d586b3e8528b20252c729c476a2c02954/hpack-4.0.0.tar.gz"
    sha256 "fc41de0c63e687ebffde81187a948221294896f6bdc0ae2312708df339430095"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/b6/44/ed0fa6a17845fb033bd885c03e842f08c1b9406c86a2e60ac1ae1b9206a6/httpcore-1.0.6.tar.gz"
    sha256 "73f6dbd6eb8c21bbf7ef8efad555481853f5f6acdeaff1edb0694289269ee17f"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/78/82/08f8c936781f67d9e6b9eeb8a0c8b4e406136ea4c3d1f89a5db71d42e0e6/httpx-0.27.2.tar.gz"
    sha256 "f7c2be1d2f3c3c3160d441802406b206c2b76f5947b11115e6df10c6c65e66c2"
  end

  resource "hyperframe" do
    url "https://files.pythonhosted.org/packages/5a/2a/4747bff0a17f7281abe73e955d60d80aae537a5d203f417fa1c2e7578ebb/hyperframe-6.0.1.tar.gz"
    sha256 "ae510046231dc8e9ecb1a6586f63d2347bf4c8905914aa84ba585ae85f28a914"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/a9/b7/d9e3f12af310e1120c21603644a1cd86f59060e040ec5c3a80b8f05fae30/pydantic-2.9.2.tar.gz"
    sha256 "d155cef71265d1e9807ed1c32b4c8deec042a44a50a4188b25ac67ecd81a9c0f"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/e2/aa/6b6a9b9f8537b872f552ddd46dd3da230367754b6f707b8e1e963f515ea3/pydantic_core-2.23.4.tar.gz"
    sha256 "2584f7cf844ac4d970fba483a717dbe10c1c1c96a969bf65d61ffe94df1b2863"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "socksio" do
    url "https://files.pythonhosted.org/packages/f8/5c/48a7d9495be3d1c651198fd99dbb6ce190e2274d0f28b9051307bdec6b85/socksio-1.0.0.tar.gz"
    sha256 "f88beb3da5b5c38b9890469de67d0cb0f9d494b78b106ca1845f96c10b91c4ac"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  def install
    virtualenv_install_with_resources
  end

  # test do
  #   # TODO: some command likes `yutto run-checks`
  # end
end
