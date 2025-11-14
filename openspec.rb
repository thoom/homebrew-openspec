
require "language/node"

class Openspec < Formula
  desc "OpenSpec CLI - AI-powered API specification generator"
  homepage "https://github.com/fission-ai/openspec"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-0.15.0.tgz"
  sha256 "d60f4dec8070cd892c4a934b146578a1daed53604bf7886af96d96a3f67008dd"
  version "0.15.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/openspec", "--version"
  end
end
