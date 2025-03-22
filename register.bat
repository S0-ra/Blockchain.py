@REM This script adds node on port 5001 to node on default port 5000

@echo off
curl -X POST -H "Content-Type: application/json" -d "{\"nodes\": [\"http://127.0.0.1:%1\"]}" http://127.0.0.1:%2/nodes/register
