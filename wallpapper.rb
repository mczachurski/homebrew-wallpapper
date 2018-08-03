require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.1.0.tar.gz'
  sha256 '931cec74d4e5537d6a24c3fd1a6e1cc8ca045a05feba9e5b1a36f49440792370'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--configuration', 'release'
    bin.install '.build/x86_64-apple-macosx10.10/release/wallpapper'
  end
end
