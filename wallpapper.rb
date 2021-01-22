require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.6.0.tar.gz'
  sha256 '12aa5b514809a1e469a537bb6b69e236d6c68387320cbefb05c6aabf30eb0461'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/wallpapper'
  end
end
