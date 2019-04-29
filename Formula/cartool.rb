# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cartool < Formula
  desc "Export images from OS X / iOS .car CoreUI archives"
  homepage "https://github.com/cyrex/cartool"
  url "https://github.com/cyrex/cartool/archive/v0.1.0.tar.gz"
  sha256 "04dc150ab982878f5f3242c1e41271db4f0abb018e180eade0b08a88344efbdf"

  depends_on :xcode => ["7.0", :build]

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "cmake", ".", *std_cmake_args
    system "make", "install", "PREFIX=#{prefix}" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cartool`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
