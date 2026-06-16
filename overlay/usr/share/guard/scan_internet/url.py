import requests, sys
def url(data = str, level = int):
    # verificar se a URL existe
    answer = requests.head(data, allow_redirects=True, timeout=5)
    if answer.status_code == 200:
        exists = True
    elif answer.status_code == 404:
        exists = False
    else:
        print(f"{data} doesn't exists.")

    #verificação de level incorreto

    if (level == 0) or (level > 9):
        sys.exit(1)
    elif not exists:
        sys.exit(1)
    dangerlevel = 0

    if level == 1:
        if data.startswith("http://"):
            dangerlevel += 