#!/usr/bin/env node

var util = require("util");
var exec = require("child_process").exec;
var child;
var style = require("ansi-styles");

var padding = "  ";

// Big df command to get disk usage for /, ~/NAS, and ~/Storage
child = exec("df -h ",
function(error, stdout, stderr){
    if (!error){
        var output = stdout;
        var lines = output.split("\n");

        var disknames = ["", "System\t", "NAS\t", "Storage\t"];
        var mountpoints = ["", "/", "/home/hermann/NAS", "/home/hermann/Storage"];
        var mntNew = ["", "/", "~/NAS", "~/Storage"];   

        // Console log table header "Filesystems Size Used Avail Use% Directory"
        console.log("\n"+lines[0].replace("Filesystem", "Filesystems "));

        for (var i = 1; i < lines.length-1; i++) {
            var line = lines[i];
            var myRegexp = /([0-9]{1,3})%/g;
            var match = myRegexp.exec(line);

            var mntRe = new RegExp(mountpoints[i]+"$", "gi");
            line = line.replace(mntRe, mntNew[i]);
            line = padding+line;

            console.log(line);
            print_loadbar(match[1]);
        }
    }
    else {
        console.log(error);
    }
});

function print_loadbar(percent){
    var bar_fill = "=",
        bar_empty = style.gray.open+"="+style.gray.close,
        endpost_l = "[",
        endpost_r = "]";

    var output = "";

    output +=endpost_l;
    for (var i = 1; i <= 29; i++) {
        // 0-79 colored white
        if (percent/2 >= i) output += (style.green.open+bar_fill+style.green.close);
        else output += bar_empty
    }
    for (var i = 30; i <= 39; i++) {
        // 80-89 colored yellow
        if (percent/2 >= i) output += (style.yellow.open+bar_fill+style.yellow.close);
        else output += bar_empty
    }
    for (var i = 40; i <= 44; i++) {
        // 90-100 colored red
        if (percent/2 >= i) output += (style.red.open+bar_fill+style.red.close);
        else output += bar_empty
    }
    output +=endpost_r;
    console.log(padding+output);
}

