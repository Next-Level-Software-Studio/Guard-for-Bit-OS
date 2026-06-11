import json
from pathlib import Path

with open("/usr/share/bit-os/guard/well-known-ports.json", "r") as f:
    non_official = json.load(f)

official = None

def _getservice(port = int):
    if port <= 1023:
        return "well_known"
    elif port >= 1024 and port <= 49151:
        return "registered"
    elif port >= 49152 and port <= 65535:
        return "private"

def on():
    pass
def off():
    pass
def allow():
    pass
def block():
    pass