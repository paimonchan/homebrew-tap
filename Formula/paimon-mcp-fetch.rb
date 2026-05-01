class PaimonMcpFetch < Formula
  desc "Web content fetching MCP server"
  homepage "https://github.com/paimonchan/paimon-mcp-fetch"
  version "0.1.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/paimonchan/paimon-mcp-fetch/releases/download/v0.1.2/paimon-mcp-fetch-darwin-arm64"
    sha256 "e1b384e98918c43403b59d9b572eccbce6828392634f5f6525b368e5b5026d53"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/paimonchan/paimon-mcp-fetch/releases/download/v0.1.2/paimon-mcp-fetch-darwin-amd64"
    sha256 "45e88bc6a76baf284cc192fe53b6cecc5053859590502fc08186168689908fd3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/paimonchan/paimon-mcp-fetch/releases/download/v0.1.2/paimon-mcp-fetch-linux-arm64"
    sha256 "818d06012b5b3dfb1c0ec59bf96d81e37669fbb208f4c56fcf6d53d3617b00e2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/paimonchan/paimon-mcp-fetch/releases/download/v0.1.2/paimon-mcp-fetch-linux-amd64"
    sha256 "53117ec211e83ab45b0b28f00c82d25ecb35b818c0ad21babcc3a80d67b1fd22"
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
