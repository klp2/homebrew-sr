# Placeholder - GoReleaser will overwrite this on the next release.
# Run: brew tap klp2/sr && brew install sr
class Sr < Formula
  desc "Bulk reverse DNS (PTR) lookups on CIDR ranges"
  homepage "https://github.com/klp2/sr"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "sr (ShowReverse)", shell_output("#{bin}/sr --help")
  end
end
