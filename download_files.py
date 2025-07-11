import os
import requests

files = {
    "esempio/path/file_grande.bin": "https://mega.nz/file/xxxxxxxx#chiave",
    # aggiungi qui altri file grandi con percorso e link
}

for path, url in files.items():
    os.makedirs(os.path.dirname(path), exist_ok=True)
    if not os.path.exists(path):
        print(f"Scaricando {path}...")
        response = requests.get(url)
        with open(path, "wb") as f:
            f.write(response.content)
        print(f"{path} scaricato con successo.")
    else:
        print(f"{path} già presente, salto.")
