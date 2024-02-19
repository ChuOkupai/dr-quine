i = 5

import os

if i > 0:
	if os.path.basename(__file__).find('_') >= 0:
		i -= 1
	name = 'Sully_' + str(i) + '.py'
	code = "i = {0}\n\nimport os\n\nif i > 0:\n\tif os.path.basename(__file__).find('_') >= 0:\n\t\ti -= 1\n\tname = 'Sully_' + str(i) + '.py'\n\tcode = {1}\n\tf = open(name, 'w')\n\tf.write(code.format(i, repr(code)))\n\tf.close()\n\tos.system('python3 ' + name)\n"
	f = open(name, 'w')
	f.write(code.format(i, repr(code)))
	f.close()
	os.system('python3 ' + name)
