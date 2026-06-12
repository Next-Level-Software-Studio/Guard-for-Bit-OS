def url(data = str, level = int):
    if (level == 0) or (level > 9):
        print("invalid level")

    dangerlevel = 0

    if level == 1:
        if data.startswith("http://"):
            dangerlevel = 100