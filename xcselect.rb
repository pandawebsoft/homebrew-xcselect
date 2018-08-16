require "formula"

HOMEBREW_XCSELECT_VERSION='1.1.0'

class Xcselect < Formula
  desc "A command line tool based xcode-select but more flexible and easy to use."
  homepage "https://github.com/pandawebsoft/xcselect"
  #url "https://github.com/pandawebsoft/xcselect/releases/download/#{HOMEBREW_HTTR_VERSION}/xcselect-release.tar.gz"
  url "https://github.com/pandawebsoft/xcselect/archive/v#{HOMEBREW_XCSELECT_VERSION}.tar.gz"
  sha256 "6e5265b55d1f74ef1b83e9403cc5e8c90ca4dfd5ffaa95b799ee044fa19c042a"
  # depends_on "cmake" => :build

  version HOMEBREW_XCSELECT_VERSION
  head 'https://github.com/pandawebsoft/xcselect.git', :branch => 'master'

  def install
     system "make"
  end
end
