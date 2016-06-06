'use strict';
var config = require('./lib/safe-config')(__dirname+'/conf/application.conf');
console.log(config);
console.log(config.a);
console.log(config.env);
console.log(config['env.home']);
