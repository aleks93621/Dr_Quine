#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
int main(){
	int x=5;
	if(x < 1)
		return 0;
	char*env=getenv("_");
	if(!strstr(env,"./Sully_")){x++;}
	char*s="#include<stdio.h>%1$c#include<stdlib.h>%1$c#include<math.h>%1$c#include<string.h>%1$cint main(){%1$c%2$cint x=%5$d;%1$c%2$cif(x < 1)%1$c%2$c%2$creturn 0;%1$c%2$cchar*env=getenv(%3$c_%3$c);%1$c%2$cif(!strstr(env,%3$c./Sully_%3$c)){x++;}%1$c%2$cchar*s=%3$c%4$s%3$c;%1$c%2$cchar*fileName;%1$c%2$cchar*compile;%1$c%2$cchar*exec;%1$c%2$casprintf(&fileName,%3$cSully_%6$cd.c%3$c,x-1);%1$c%2$casprintf(&compile,%3$cclang -Wall -Wextra -Werror -o Sully_%6$cd %6$cs%3$c,x-1,fileName);%1$c%2$casprintf(&exec,%3$c./Sully_%6$cd%3$c,x-1);%1$c%2$cFILE*fichier=NULL;%1$c%2$cif((fichier=fopen(fileName,%3$cw%3$c))!=NULL){%1$c%2$c%2$cfprintf(fichier,s,10,9,34,s,x-1,37);%1$c%2$c%2$cfclose(fichier);%1$c%2$c%2$csystem(compile);%1$c%2$c%2$csystem(exec);%1$c%2$c}else{return 0;}%1$c%2$cfree(fileName);%1$c%2$cfree(compile);%1$c%2$cfree(exec);%1$c}";
	char*fileName;
	char*compile;
	char*exec;
	asprintf(&fileName,"Sully_%d.c",x-1);
	asprintf(&compile,"clang -Wall -Wextra -Werror -o Sully_%d %s",x-1,fileName);
	asprintf(&exec,"./Sully_%d",x-1);
	FILE*fichier=NULL;
	if((fichier=fopen(fileName,"w"))!=NULL){
		fprintf(fichier,s,10,9,34,s,x-1,37);
		fclose(fichier);
		system(compile);
		system(exec);
	}else{return 0;}
	free(fileName);
	free(compile);
	free(exec);
}