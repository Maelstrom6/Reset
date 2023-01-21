import os
import json

home = os.environ.get("HOME")
file = f"{home}/.config/Code/User/settings.json"

s = open(file, "r").read()
settings = json.loads(s)
settings["workbench.colorTheme"] = "GitHub Dark Default"
s = json.dumps(settings, indent=4)
open(file, "w").write(s)
