require 'formula'

class Replicant < Formula
  homepage 'http://hyperdex.org'
  url 'http://hyperdex.org/src/replicant-0.4.0.tar.gz'
  sha1 '316b29a636b2647d9d45c48ce47c9958ffadfcc9'

  depends_on 'popt'
  depends_on 'glog'
  depends_on 'sparsehash'
  depends_on 'libpo6'
  depends_on 'libe'
  depends_on 'busybee'
  depends_on 'hyperleveldb'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make check"
    system "make install"
  end
end
