"""
 This program writes its own source code to a file.
"""

name = "Grace_kid.py"
modes = "w"
code = '"""\n This program writes its own source code to a file.\n"""\n\nname = "{0}"\nmodes = "w"\ncode = {1}\nf = open(name, modes)\nf.write(code.format(name, repr(code)))\nf.close()\n'
f = open(name, modes)
f.write(code.format(name, repr(code)))
f.close()
