
require "language/node"

class Openspec < Formula
  desc "OpenSpec CLI - AI-powered API specification generator"
  homepage "https://github.com/fission-ai/openspec"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-0.14.0.tgz"
  sha256 "3cd3672cb54b9bdac0733bb2a10cdf14b45e76ca8b09cafdc81ec383911d8c5e"
  version "0.14.0"
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
