import subprocess

with open("requirements.txt") as f:
    for line in f:
        pkg = line.strip()
        if pkg and not pkg.startswith("#"):
            subprocess.run(["poetry", "add", pkg])
