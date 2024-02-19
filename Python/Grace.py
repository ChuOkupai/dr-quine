"""
 This program writes its own source code to a file.
"""

name = "Grace_kid.py"
code = '"""\n This program writes its own source code to a file.\n"""\n\nname = "{0}"\ncode = {1}\nf = open(name, "w")\nf.write(code.format(name, repr(code)))\nf.close()\n'
f = open(name, "w")
f.write(code.format(name, repr(code)))
f.close()
