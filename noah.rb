class Noah < Formula
  desc "Darwin subsystem for Linux (Bash on macOS)"
  homepage "http://github.com/linux-noah/noah"
  url "https://github.com/linux-noah/noah/archive/0.5.0.tar.gz"
  version "0.5.0"
  sha256 "8a4d1b4effc3cd9b7a787bbe5e4ecc28b4f4fe629fcccb72b339e2e9e14b1607"

  depends_on "noahstrap"
  depends_on "cmake"

  def install
    mkdir "bulid" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    system "#{bin}/noah", "--version"
    assert_match /Usage/, shell_output("#{bin}/noah --help", 1)
  end
end
