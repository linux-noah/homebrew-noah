class Noah < Formula
  desc "Darwin subsystem for Linux (Bash on macOS)"
  homepage "http://github.com/linux-noah/noah"
  url "https://github.com/linux-noah/noah/archive/0.5.0.tar.gz"
  version "0.5.0"
  sha256 "c149f649a9424d5baaa42cfd48308e34f036f613693efc8a68d1ffc2893f2ce2"

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
