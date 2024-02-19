#include <stdio.h>

/*
 This program writes its own source code to a file.
*/

#define STR(X) #X
#define XSTR(X) STR(X)
#define FT(X) int main(){FILE *f=fopen("Grace_kid.c","w");fprintf(f,"#include <stdio.h>\n\n/*\n This program writes its own source code to a file.\n*/\n\n#define STR(X) #X\n#define XSTR(X) STR(X)\n#define FT(X) "X"\n\nFT(XSTR(FT(X)))\n");fclose(f);}

FT(XSTR(FT(X)))
