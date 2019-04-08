require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.2.2.tar.gz'
  sha256 'cde3623e232924efc8d0b1ca66aa7da041125b1f604e640d1526ebf585aa634a'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/x86_64-apple-macosx/release/wallpapper'
  end
end
