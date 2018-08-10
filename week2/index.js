var fs = require('fs');
var mysql = require('mysql');

var config = JSON.parse(fs.readFileSync("config-secret.json"))

var connection = mysql.createConnection({
    host: config.host,
    user: config.user,
    password: config.password,
    port: config.port,
    database: config.database
});

connection.connect(function(err) {
    if (err) {
      console.error('error connecting: ' + err.stack);
    }
});

connection.query('SELECT * FROM task', function(error, results, fields) {
    console.log(results);
});

connection.end();
