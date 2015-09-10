var http = require('http');

http.createServer(function (req, res) {
   res.writeHead(200, {'Content-Type': 'text/html'});
   res.end('<html><body><h1>Hello World</h1></body></html>');
}).listen(3000);

console.log('Server running on port 3000.');
