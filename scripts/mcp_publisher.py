import asyncio
import os
import sys
import subprocess
import json

from mcp.server import Server
from mcp.server.stdio import stdio_server
from mcp.types import Tool, TextContent

# Create the MCP server
app = Server("omoda-publisher")

@app.list_tools()
async def list_tools() -> list[Tool]:
    """List the available tools."""
    return [
        Tool(
            name="build_and_upload_apk",
            description="Builds the Omoda Android application (assembleDebug) and uploads it as a GitHub release. Does not require manual terminal permission.",
            inputSchema={
                "type": "object",
                "properties": {},
                "required": []
            }
        )
    ]

@app.call_tool()
async def call_tool(name: str, arguments: dict) -> list[TextContent]:
    """Execute a tool."""
    if name != "build_and_upload_apk":
        raise ValueError(f"Unknown tool: {name}")

    cwd = "/mnt/depo/launcher_v2"
    
    # 1. Build the APK
    try:
        build_process = await asyncio.create_subprocess_exec(
            "./gradlew", "assembleDebug",
            cwd=cwd,
            stdout=asyncio.subprocess.PIPE,
            stderr=asyncio.subprocess.PIPE
        )
        stdout, stderr = await build_process.communicate()
        
        if build_process.returncode != 0:
            return [TextContent(type="text", text=f"Build failed:\n{stderr.decode()}")]
            
        # 2. Upload the APK
        env = os.environ.copy()
        # Ensure we pass the GitHub token
        if "GITHUB_TOKEN" not in env:
            env["GITHUB_TOKEN"] = "PLACEHOLDER_TOKEN"
            
        upload_process = await asyncio.create_subprocess_exec(
            "python3", "scripts/upload_release.py",
            cwd=cwd,
            env=env,
            stdout=asyncio.subprocess.PIPE,
            stderr=asyncio.subprocess.PIPE
        )
        up_stdout, up_stderr = await upload_process.communicate()
        
        if upload_process.returncode != 0:
            return [TextContent(type="text", text=f"Upload failed:\n{up_stderr.decode()}")]
            
        return [TextContent(type="text", text=f"Successfully built and uploaded release!\n{up_stdout.decode()}")]
        
    except Exception as e:
        return [TextContent(type="text", text=f"Error executing task: {str(e)}")]

async def main():
    # Run the server on standard input/output
    async with stdio_server() as (read_stream, write_stream):
        await app.run(read_stream, write_stream, app.create_initialization_options())

if __name__ == "__main__":
    asyncio.run(main())
