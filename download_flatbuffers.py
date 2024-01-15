from requests import get
from os import rename, remove, chmod
from shutil import unpack_archive, rmtree

res = get("https://github.com/google/flatbuffers/releases/download/v23.5.26/Linux.flatc.binary.clang++-12.zip", allow_redirects=True)

with open("./flatc.zip", "wb") as fp:
    fp.write(res.content)

unpack_archive("./flatc.zip", "./flatca")
remove("./flatc.zip")

rename("./flatca/flatc", "./flatc")
chmod("./flatc", 0o0755)

rmtree("./flatca")