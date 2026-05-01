class PaimonMcpFetch < Formula
  desc "Web content fetching MCP server"
  homepage "https://github.com/paimonchan/paimon-mcp-fetch"
  version "0.1.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/paimonchan/paimon-mcp-fetch/releases/download/v0.1.1/paimon-mcp-fetch-darwin-arm64"
    sha256 "6cf1e98441680ed2b4d1834206655598be711a723b0ef92703284b0b33cce01b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/paimonchan/paimon-mcp-fetch/releases/download/v0.1.1/paimon-mcp-fetch-darwin-amd64"
    sha256 "7be30a22867fb3a6b4ed7a96a6db575e8963b513c04afc3b222a99c1ce4c4652"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/paimonchan/paimon-mcp-fetch/releases/download/v0.1.1/paimon-mcp-fetch-linux-arm64"
    sha256 "c08c378b2df21aaba874d8631e6d6a29d48f7bfa08bc0512be1d9618bc313815"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/paimonchan/paimon-mcp-fetch/releases/download/v0.1.1/paimon-mcp-fetch-linux-amd64"
    sha256 "cda9994688d904fab384c4363532cf71651afaf398842483df761df2054127e0"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "paimon-mcp-fetch-darwin-arm64" => "paimon-mcp-fetch"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "paimon-mcp-fetch-darwin-amd64" => "paimon-mcp-fetch"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "paimon-mcp-fetch-linux-arm64" => "paimon-mcp-fetch"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "paimon-mcp-fetch-linux-amd64" => "paimon-mcp-fetch"
    end
  end

  test do
    system "#{bin}/paimon-mcp-fetch", "--version"
  end
end
