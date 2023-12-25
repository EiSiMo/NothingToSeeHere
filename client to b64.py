import base64

with open("troll1.exe", "rb") as file_read:
    with open("client.b64", "w", encoding="utf8") as file_write:
        file_write.write(base64.b64encode(file_read.read()).decode("utf8"))