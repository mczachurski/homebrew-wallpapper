require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.2.1.tar.gz'
  sha256 '9c08d9b70155bca2e2c72a363d13655de3284d844e15624bbe736673c43d9f9e'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install '.build/x86_64-apple-macosx10.10/release/wallpapper'
  end
end
