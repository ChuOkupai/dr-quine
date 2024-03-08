int i = 5;

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const char *filename = __FILE__;

#define STR(X) #X
#define XSTR(X) STR(X)
#define FT(X) int main() { if (i > 0) { char bin[32]; char src[32]; char cmd[64]; if (strrchr(filename, '_')) --i; sprintf(bin, "Sully_%d", i); sprintf(src, "%s.c", bin); sprintf(cmd, "cc %s -o %s; ./%s", src, bin, bin); FILE *f = fopen(src, "w"); fprintf(f, "int i = %d;\n\n#include <stdio.h>\n#include <stdlib.h>\n#include <string.h>\n\nconst char *filename = __FILE__;\n\n#define STR(X) #X\n#define XSTR(X) STR(X)\n#define FT(X) %s\n\nFT(XSTR(FT(X)))\n", i, X); fclose(f); system(cmd); } }

FT(XSTR(FT(X)))
