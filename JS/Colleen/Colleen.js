//Commentaire hors programme
function ok(){}
function main(){
//Commentaire main
ok();
console.log("//Commentaire hors programme\nfunction ok(){}\n" + main.toString() + "\nmain();");
}
main();
