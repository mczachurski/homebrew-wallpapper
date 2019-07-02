require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.4.1.tar.gz'
  sha256 '2583028c791df14bf78aef70b5354fdf8efb0f41ed799f7c5c068f8d9e0ee4cb'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/x86_64-apple-macosx/release/wallpapper'
  end
end
