function Sully(){
$x=5;
if($x<1)
return 0;
const { exec } = require('child_process');
var fs=require('fs');
if(fs.existsSync('./Sully_5.js')){
$path=`./Sully_${$x-1}.js`;
fs.writeFile($path, Sully.toString().replace($x, $x-1) + "\nSully();", function (err) {
    if (err) return console.log(err);
});
} else {
$path=`./Sully_${$x}.js`;
fs.writeFile('./Sully_5.js', Sully.toString() + "\nSully();", function (err) {
    if (err) return console.log(err);
});
}
exec(`node ${$path}`);
}
Sully();