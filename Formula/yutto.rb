# How to update this formula?
# See [Python-for-Formula-Authors](https://docs.brew.sh/Python-for-Formula-Authors).
# 1. Update url and sha256 field refer to [PyPI](https://pypi.org/project/<pkg>/#files).
# 2. Run `brew update-python-resources <formula>` to write resource stanzas.

class Yutto < Formula
  include Language::Python::Virtualenv

  desc ":ice_cube: 一个可爱且任性的 B 站视频下载器"
  homepage "https://github.com/SigureMo/yutto"
  url "https://files.pythonhosted.org/packages/a1/d6/0ccde5df5826d500b741ed07c66cc6c97feb92ac36a4dc3cd9d39ab40f33/yutto-2.3.1.tar.gz"
  sha256 "c1f6558feea22412151d86ef3c415fcc4a6c03dc270171eca2916b5e25ca9bce"
  license "GPL-3.0"

  depends_on "rust" => :build # for `biliass` and `pydantic-core`
  depends_on "ffmpeg"
  depends_on "python@3.14"

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/5f/56/a8120250d128bed162cd73c76d45f6ef9991f3e068f62a8ee060afa3104a/annotated_types-0.8.0.tar.gz"
    sha256 "13b2beaad985e05e2d6407ee4c4f35590b11f8d693a258a561055cac8f64cab7"
  end

  resource "biliass" do
    url "https://files.pythonhosted.org/packages/d7/e5/b2883dce614712eff4117ebb19e1afb6171856075187cb7647dab8c40d62/biliass-2.5.0.tar.gz"
    sha256 "24e64dbfef9287f04a681ddb83ddd812a50389a3b9951748ad48363632995a66"
  end

  resource "dict2xml" do
    url "https://files.pythonhosted.org/packages/20/47/abde6e5c4456f7074ddd2e0dd8bbf111d6de40ff5bb5761a5f6b20ad474b/dict2xml-1.7.8.tar.gz"
    sha256 "6638da9ad32b0f8be8336d16e0f36a9c3821145e34ed3ef4889822a9b980fb28"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/18/a5/b60d21ac674192f8ab0ba4e9fd860690f9b4a6e51ca5df118733b487d8d6/pydantic-2.13.4.tar.gz"
    sha256 "c40756b57adaa8b1efeeced5c196f3f3b7c435f90e84ea7f443901bec8099ef6"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/9d/56/921726b776ace8d8f5db44c4ef961006580d91dc52b803c489fafd1aa249/pydantic_core-2.46.4.tar.gz"
    sha256 "62f875393d7f270851f20523dd2e29f082bcc82292d66db2b64ea71f64b6e1c1"
  end

  resource "returns" do
    url "https://files.pythonhosted.org/packages/29/e6/f5ada68dfb47e9c032683813f3cd9a810978d8ce541866d365076215906f/returns-0.29.0.tar.gz"
    sha256 "fd9831594403229595dc705fee632a9be24a497df10aa3b9b72405d75d54e8ad"
  end

  resource "segno" do
    url "https://files.pythonhosted.org/packages/1c/2e/b396f750c53f570055bf5a9fc1ace09bed2dff013c73b7afec5702a581ba/segno-1.6.6.tar.gz"
    sha256 "e60933afc4b52137d323a4434c8340e0ce1e58cec71439e46680d4db188f11b3"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/a3/26/b09b8010994eccc3c09092e6b34058f36a460eea2d4c3e8b910c695975a0/typing_inspection-0.4.4.tar.gz"
    sha256 "547274fa6b0a561ccf549cc9524b999a578e737d015d8709d021f9d0d13bea47"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/18/72/fba934cb3dff7a85d811820efffcd141ddd52b5a2a01637f64551373ff4d/websockets-17.1.tar.gz"
    sha256 "acfea4c20bf54384883ea33b1240fc1db4f52e190823a4e2b334bc3e8bfca96a"
  end

  def install
    # yutto > aiofiles > hatchling, fix to `ZIP does not support timestamps before 1980` error
    # Same as https://github.com/Homebrew/homebrew-core/pull/203263
    ENV["SOURCE_DATE_EPOCH"] = Time.now.to_i.to_s

    virtualenv_install_with_resources
  end

  # test do
  #   # TODO: some command likes `yutto run-checks`
  # end
end
