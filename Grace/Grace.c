#include <stdio.h>
	/*
		Commentaire Grace
	*/
#define S "#include <stdio.h>%c%c/*%c%c%cCommentaire Grace%c%c*/%c#define S %c%s%c%c#define PRINT(fichier) fprintf(fichier,S,10,9,10,9,9,10,9,10,34,S,34,10,10,34,34,34,34,10)%c#define FT() int main(){FILE*fichier=NULL;if((fichier=fopen(%cGrace_kid.c%c,%cw%c))!=NULL){PRINT(fichier);fclose(fichier);}else{return 0;}}%cFT()"
#define PRINT(fichier) fprintf(fichier,S,10,9,10,9,9,10,9,10,34,S,34,10,10,34,34,34,34,10)
#define FT() int main(){FILE*fichier=NULL;if((fichier=fopen("Grace_kid.c","w"))!=NULL){PRINT(fichier);fclose(fichier);}else{return 0;}}
FT()