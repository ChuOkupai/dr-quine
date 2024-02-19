#include <stdio.h>

/*
 This program prints its own source code.
*/

#define STR(X) #X
#define XSTR(X) STR(X)
#define FT(X) printf("#include <stdio.h>\n\n/*\n This program prints its own source code.\n*/\n\n#define STR(X) #X\n#define XSTR(X) STR(X)\n#define FT(X) "X"\n\nvoid print_code() {\n\tFT(XSTR(FT(X)));\n}\n\nint main() {\n\t/*\n\t Entry point of the program.\n\t*/\n\tprint_code();\n}\n")

void print_code() {
	FT(XSTR(FT(X)));
}

int main() {
	/*
	 Entry point of the program.
	*/
	print_code();
}
