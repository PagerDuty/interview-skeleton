"""
PagerDuty MCP Server: Starter Code

Setup (Python 3.10+):
    pip install "mcp>=2,<3" httpx

Test with the MCP Inspector (requires Node.js):
    npx @modelcontextprotocol/inspector -e PAGERDUTY_API_TOKEN=<your_token> python server.py

Use with an MCP client (e.g. Claude Code, Claude Desktop, Cursor):
    Configure the client to run `python server.py` with PAGERDUTY_API_TOKEN
    set in the server's environment. The client launches the server for you.
"""

import os
import httpx
from mcp.server.mcpserver import MCPServer

mcp = MCPServer("pagerduty")

client = httpx.Client(
    base_url="https://api.pagerduty.com",
    headers={
        "Authorization": f"Token token={os.environ['PAGERDUTY_API_TOKEN']}",
        "Accept": "application/vnd.pagerduty+json;version=2",
    },
)

@mcp.tool()
def list_services(query: str = "") -> list[dict]:
    """Example tool: list PagerDuty services, optionally filtered by name."""
    resp = client.get("/services", params={"query": query})
    resp.raise_for_status()
    return [{"id": s["id"], "name": s["name"]} for s in resp.json()["services"]]

# TODO: add your tools here

if __name__ == "__main__":
    mcp.run()
