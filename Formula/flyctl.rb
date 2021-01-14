# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.160"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.160/flyctl_0.0.160_macOS_x86_64.tar.gz"
    sha256 "a79d22c7a8c1a8960be9e9c6e11d84cb25d5ed6f4985c2234dcc8f8c27defc72"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.160/flyctl_0.0.160_Linux_x86_64.tar.gz"
    sha256 "2deae28fc4bd6a04ed46b0a01e5d94ba88c7a664ca8e78dbfc97ba6d7ab03a24"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.160/flyctl_0.0.160_Linux_arm64.tar.gz"
    sha256 "7bf2ef1880f734d36ff4f71138277fbdf83353f2194a473fbbca81110fbdb04a"
  end

  def install
    bin.install "flyctl"
    bin.install_symlink "flyctl" => "fly"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
