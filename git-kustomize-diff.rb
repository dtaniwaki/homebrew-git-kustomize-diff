class GitKustomizeDiff < Formula
  desc "Diff tool for Kustomize"
  homepage "https://github.com/dtaniwaki/git-kustomize-diff"
  baseurl = "https://github.com/dtaniwaki/git-kustomize-diff/releases/download"
  version "v0.1.6"
  archive_name = "git-kustomize-diff_darwin_x86_64.tar.gz"
  url baseurl + "/" + version + "/" + archive_name
  sha256 "9fc5de0838dfecb412fc9d38a1e473e2851c66f6ca7dec6270089880b42e0fe1"
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
