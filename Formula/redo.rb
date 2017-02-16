class Redo < Formula
  desc "Formula for redo, implemented in bash"
  homepage "http://news.dieweltistgarnichtso.net/bin/redo-sh.html"
  url "http://news.dieweltistgarnichtso.net/bin/archives/redo-sh.tar.gz"
  sha256 "d7e43c09cc244d5a07c509ff8f30d37b1a97282aa0e1e6113d45689c55e97dea"
  version "1.2.4"

  depends_on "coreutils"

  def install
    Dir["bin/*"].each do |dn|
      bin.install dn
    end
    Dir["man/man1/*"].each do |dn|
      man.install dn
    end
  end
end
