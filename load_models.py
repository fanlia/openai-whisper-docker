import sys
import os
import whisper

def load_model(
    name: str,
):
    default = os.path.join(os.path.expanduser("~"), ".cache")
    download_root = os.path.join(os.getenv("XDG_CACHE_HOME", default), "whisper")
    checkpoint_file = whisper._download(whisper._MODELS[name], download_root, False)

for name in sys.argv[1:]:
  load_model(name)
