def main(search=str):
    with open('/etc/guard/danger-level.conf', 'r', encoding='utf-8') as f:
        i = search + "="
        
        # Lê o ficheiro linha a linha diretamente
        for line in f:
            if line.startswith(i):
                return line.removeprefix(i).strip() # O .strip() limpa quebras de linha ou espaços
    return None 
if __name__ == "__main__":
    print(main(search="oi"))