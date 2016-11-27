# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Noahstrap < Formula
  desc ""
  homepage ""
  url "https://github.com/linux-noah/noahstrap/archive/0.1.2.tar.gz"
  version "0.1.2"
  sha256 "cc9ebf8576949e8a8f84c083cfd81eeffc914f3eabe4961a44a0326c56c70b0f"

  depends_on "pv"
  depends_on "gnu-tar"

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
