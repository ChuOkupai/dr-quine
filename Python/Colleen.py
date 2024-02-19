"""
 This program prints its own source code.
"""

def get_code():
	return '"""\n This program prints its own source code.\n"""\n\ndef get_code():\n\treturn {0}\n\ndef main():\n\t"""\n\t Output.\n\t"""\n\tprint(get_code().format(repr(get_code())))\n\nif __name__ == "__main__":\n\tmain()'

def main():
	"""
	 Output.
	"""
	print(get_code().format(repr(get_code())))

if __name__ == "__main__":
	main()
