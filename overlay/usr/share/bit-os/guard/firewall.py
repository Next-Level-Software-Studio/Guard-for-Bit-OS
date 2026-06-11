import json
from pathlib import Path
with open("/usr/share/bit-os/guard/non-official-ports-services.json", "r") as f:
    non_official = json.load(f)

def on():
    pass
def off():
    pass
def allow():
    pass
def block():
    pass