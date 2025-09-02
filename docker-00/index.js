import path from 'path';
import http from 'http';
import express from 'express';

const PORT = process.env.PORT || 3000;

const pathToPublicDir = path.join(import.meta.dirname, 'public');

const app = express();
const server = http.createServer(app);

app.use(express.static(pathToPublicDir));

server.listen(PORT, () => console.log(`http://127.0.0.1:${PORT}`));
