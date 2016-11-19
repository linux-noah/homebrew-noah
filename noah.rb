class Noah < Formula
  desc "Darwin subsystem for Linux (Bash on macOS)"
  homepage "http://github.com/linux-noah/noah"
  url "https://github.com/linux-noah/noah/archive/0.3.9.tar.gz"
  version "0.3.9"
  sha256 "36966251e6dc6768c6efdf3a98a3f6af4efd0d4ec3b7f9097cdee876a307c044"

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

      #{name} only uses superuser priviledges for handling setuid requests from
      linux processes and drop them off most of the running time, so it should
      be safe to add the setuid bit.
    EOS
    s
  end

  test do
    system "#{bin}/noah", "--version"
    assert_match /Usage/, shell_output("#{bin}/noah --help", 1)
  end
end
