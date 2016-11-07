class Noah < Formula
  desc "Darwin subsystem for Linux (Bash on macOS)"
  homepage "http://github.com/linux-noah/noah"
  url "https://github.com/linux-noah/noah/archive/0.3.0.tar.gz"
  version "0.3.0"
  sha256 "fa026e86ede1d3fcdb395afc89c5a53cefa5db952aa3c751805a6918ae6c5330"

  depends_on "noahstrap"

  def install
    system "make"

    bin.install "bin/noah"
    libexec.install "libexec/noah"
  end

  def caveats
    s = <<-EOS.undent
      To allow the sudo command to run inside the linux land, #{name} requires
      superuser priviledges. You must change the ownership of the binary
      and add the setuid bit.

        sudo chown root:admin #{libexec}/noah
        sudo chmod u+s #{libexec}/noah
    EOS
    s
  end

  test do
    system "false"
  end
end
