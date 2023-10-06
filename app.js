const http = require('http');
const os = require('os');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });

  // Get the server's hostname
  const hostname = os.hostname();

  // Send the response
  res.end(`Hello, World! This is server: ${hostname}\n`);
});

const port = 3000;

server.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}/`);
});