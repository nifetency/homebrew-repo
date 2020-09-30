# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.144"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.144/flyctl_0.0.144_macOS_x86_64.tar.gz"
    sha256 "ef80d0ae165715a7ab005578a820d470ffd042f678566f623ff5fa7bbd0e2ee8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.144/flyctl_0.0.144_Linux_x86_64.tar.gz"
      sha256 "affc922a43913ca677c9bc0ccc378029f0e7baac05f569c6e0ffe40c51fa6219"
    end
  end

  def install
    bin.install "flyctl"
    bin.install_symlink "flyctl" => "fly"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
