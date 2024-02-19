int i = 5;

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define STR(S) #S
#define XSTR(S) STR(S)

#define FT(X) int main(int ac, char **av) { if (i > 0) { char bin[16]; char src[16]; char cmd[64]; if (ac > 0 && strchr(*av, '_')) --i; sprintf(bin, "Sully_%d", i); sprintf(src, "%s.c", bin); sprintf(cmd, "cc %s -o %s; ./%s", src, bin, bin); FILE *f = fopen(src, "w"); fprintf(f, "int i = %d;\n\n#include <stdio.h>\n#include <stdlib.h>\n#include <string.h>\n\n#define STR(S) #S\n#define XSTR(S) STR(S)\n\n#define FT(X) %s\n\nFT(XSTR(FT(X)))\n", i, X); fclose(f); system(cmd); } }

FT(XSTR(FT(X)))
