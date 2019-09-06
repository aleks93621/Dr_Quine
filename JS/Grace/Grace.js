//Commentaire Grace
(function Grace(){
var fs=require('fs');
fs.writeFile('./Grace_kid.js', '//Commentaire Grace\n(' + Grace.toString() + ')()', function(err){
    if (err) return console.log(err);
})})()