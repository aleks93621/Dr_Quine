#include <stdio.h>
	/*
		Commentaire hors programme
	*/
void fonction(){}
int main(){
	/*
		Commentaire main
	*/
char*s="#include <stdio.h>%c%c/*%c%c%cCommentaire hors programme%c%c*/%cvoid fonction(){}%cint main(){%c%c/*%c%c%cCommentaire main%c%c*/%cchar*s=%c%s%c;%cfonction();%cprintf(s,10,9,10,9,9,10,9,10,10,10,9,10,9,9,10,9,10,34,s,34,10,10);}";
fonction();
printf(s,10,9,10,9,9,10,9,10,10,10,9,10,9,9,10,9,10,34,s,34,10,10);}