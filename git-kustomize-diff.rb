class GitKustomizeDiff < Formula
  desc "Diff tool for Kustomize"
  homepage "https://github.com/dtaniwaki/git-kustomize-diff"
  baseurl = "https://github.com/dtaniwaki/git-kustomize-diff/releases/download"
  version "v0.1.1"
  archive_name = "git-kustomize-diff_darwin_x86_64.tar.gz"
  url baseurl + "/" + version + "/" + archive_name
  sha256 "b54fcddb9935887194b2d7270186e45198a56f01acc089dc50af402caa9a7436"
  license "Apache-2.0"
  bottle :unneeded
  depends_on "git"

  def install
    bin.install "git-kustomize-diff"
  end

  test do
    system "#{bin}/git-kustomize-diff"
  end
end
