
require "language/node"

class Openspec < Formula
  desc "OpenSpec CLI - AI-powered API specification generator"
  homepage "https://github.com/fission-ai/openspec"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-0.16.0.tgz"
  sha256 "d58717a3cb0d59a9ab09095ddf73c4fddc99affbf3d1d6515a9f1d9038e7cd60"
  version "0.16.0"
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
