class Noah < Formula
  desc "Darwin subsystem for Linux (Bash on macOS)"
  homepage "http://github.com/linux-noah/noah"
  url "https://github.com/linux-noah/noah/archive/0.3.9.tar.gz"
  version "0.3.9"
  sha256 "36966251e6dc6768c6efdf3a98a3f6af4efd0d4ec3b7f9097cdee876a307c044"

  depends_on "cmake" => :bulid

  depends_on "noahstrap"

  def install
    system "cmake", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/noah", "--version"
    assert_match /Usage/, shell_output("#{bin}/noah --help", 1)
  end
end
