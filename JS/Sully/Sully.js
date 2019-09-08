var x=5;
(function Sully(){
var fs=require('fs');
const exec = require('child_process');
if(x<1)
return 0;
if(fs.existsSync(`./Sully_${x}.js`))
    x--;
path=`./Sully_${x}.js`;
fs.writeFile(path, `var x=${x};\n(` + Sully.toString() + `)();`, function (err) {
    if (err) return console.log(err);
    exec.execSync(`node ${path}`);
});
})();