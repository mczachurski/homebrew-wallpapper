require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.1.0.tar.gz'
  sha256 'e7f09497dc91f5a9575d54b5f00a39b51a8f390442ccf8e7b2533c13f64ad76c'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--configuration', 'release'
    bin.install '.build/x86_64-apple-macosx10.10/release/wallpapper'
  end
end
