class Picocom < Formula
  desc "Minimal dumb-terminal emulation program"
  homepage "https://github.com/radxa/picocom"
  url "https://github.com/radxa/picocom.git", using: :git, revision: "f806bf28266cccdb75ba89d754de8d8fa64c6127"
  version "3.1"
  license "GPL-2.0"

  def install
    system "make"
    bin.install "picocom"
    man1.install "picocom.1"
  end

  test do
    system "#{bin}/picocom", "--help"
  end
end
