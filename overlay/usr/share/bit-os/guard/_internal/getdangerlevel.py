import sys, syslog, audit
def main(search = str):
    with open('/etc/guard/danger-level.toml', 'r', encoding='utf-8') as f:
        i = search + "="
        notexists = all(not line.startswith(i) for line in f)
        if notexists is False:
            for line in f:
                if line.startswith(i):
                    return
        elif notexists is True:
            pass
        else:
            sys.exit(1)