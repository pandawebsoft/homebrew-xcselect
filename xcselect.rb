require "formula"

HOMEBREW_XCSELECT_VERSION='1.1.0.14'

class Xcselect < Formula
  desc "A command line tool based xcode-select but more flexible and easy to use."
  homepage "https://github.com/pandawebsoft/xcselect"
  #url "https://github.com/pandawebsoft/xcselect/releases/download/#{HOMEBREW_HTTR_VERSION}/xcselect-release.tar.gz"
  url "https://github.com/pandawebsoft/xcselect/archive/v#{HOMEBREW_XCSELECT_VERSION}.tar.gz"
  sha256 "75639d12e5d91af4d4e0806518727d779bbf72b76197f44f7c08bf0cd71c4015"
  # depends_on "cmake" => :build

  version HOMEBREW_XCSELECT_VERSION
  head 'https://github.com/pandawebsoft/xcselect.git', :branch => 'master'

  def install
     system "make"
  end
end
