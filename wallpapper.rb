require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.4.2.tar.gz'
  sha256 'a18b4277d99d394fcae39066e2f25e5f8819097fe7d0870e3f9b42622cf94f96'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/x86_64-apple-macosx/release/wallpapper'
  end
end
