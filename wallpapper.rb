require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.5.1.tar.gz'
  sha256 '5595295e01a4dd1c78f69afe79015df80f9e0e21596a2f680eb6c8fc8f71184f'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/x86_64-apple-macosx/release/wallpapper'
  end
end
