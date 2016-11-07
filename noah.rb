# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Noah < Formula
  desc ""
  homepage ""
  url "https://github.com/linux-noah/noah/archive/0.3.0.tar.gz"
  version "0.3.0"
  sha256 "fa026e86ede1d3fcdb395afc89c5a53cefa5db952aa3c751805a6918ae6c5330"

  depends_on "noahstrap"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    system "make"
    bin.install "bin/noah"
    libexec.install "libexec/noah"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test noah`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
