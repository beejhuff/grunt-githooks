#!/usr/bin/env node

// GRUNT-GITHOOKS START
var exec = require('child_process').exec;

exec('/usr/bin/grunt aTask', {
       cwd: '{{expectedWorkingDir}}'
     }, function (err, stdout, stderr) {

  console.log(stdout);

  var exitCode = 0;
  if (err) {
    console.log(stderr || err);
    exitCode = -1;
  }

  process.exit(exitCode);
});
// GRUNT-GITHOOKS END