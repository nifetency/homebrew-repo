# This file was generated by GoReleaser. DO NOT EDIT.
class Nifectl < Formula
  desc "Deploys, manages and scales applications"
  homepage "https://www.nife.io"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v0.2.5/nifectl-prod-v0.2.5-darwin-amd64.tar.gz"
      sha256 "71612c2087349b45393600cafd5f4eb27e1ae9d0626d19bbf0954e8f0908fca3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v0.2.5/nifectl-prod-v0.2.5-darwin-amd64.tar.gz"
      sha256 "71612c2087349b45393600cafd5f4eb27e1ae9d0626d19bbf0954e8f0908fca3"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v0.2.5/nifectl-prod-v0.2.5-linux-386.tar.gz"
      sha256 "0ef1f9f470e3df637cd7c3017ee33f89564072593bba787a0cfccf3f8657c808"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v0.2.5/nifectl-prod-v0.2.5-linux-amd64.tar.gz"
      sha256 "078f6366ab605f2fe7e26769b6fd8e703b9a4b5d4c7f2c7155f588319fdf3858"
    end
  end

  def install
    bin.install "nifectl"
    bin.install_symlink "nifectl" => "nife"
  end

  test do
    system "#{sbin}/nifectl version"
  end
end
