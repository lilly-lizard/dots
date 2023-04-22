#!/usr/bin/python

import subprocess
from pathlib import Path
import json
import pickle

OUT = f"{Path.home()}/.config/hypr/store/dynamic_out.txt"
prev = None

def print(ar):
    with open(OUT,"w") as f:
        f.write(json.dumps(ar))

with open("/tmp/mpris-to-json.log", "wb") as f:
    process = subprocess.Popen(
        "waybar-mpris --autofocus".split(),
            stdout=subprocess.PIPE
    )
    print(json.dumps({"class":"none","text":""}))
    for line in iter(lambda: process.stdout.readline().decode("utf-8"), b""):
        dat = json.loads(line)
        if "text" in dat:
            dat["text"] = dat["text"].replace("", "")
            dat["text"] = dat["text"].replace("▶", " ")
            print(dat)
        else:
            print({"class":"none","text":""})
