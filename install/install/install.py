import portage, audit, syslog

uselist = []
vartree = portage.db[portage.root]["vartree"]
matches = vartree.dbapi.match("app-antivirus/guard")
if not matches:
    uselist = []
last_match = matches[-1]
active_use_flags = vartree.dbapi.aux_get(last_match, ["USE"])[0].split()
uselist = {flag: True for flag in active_use_flags}

if "audit" in uselist:
    