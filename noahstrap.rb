# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Noahstrap < Formula
  desc ""
  homepage ""
  url "https://github.com/linux-noah/noahstrap/archive/0.0.5.tar.gz"
  version "0.0.5"
  sha256 "905f8f4773f6ab295b8b964e5cc5e1b34e01d9bcec6757f0f106584bad99b90a"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    system "make", "install", "PREFIX=#{prefix}" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test noahstrap`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
