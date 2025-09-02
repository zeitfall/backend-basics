import path from 'path';
import http from 'http';
import express from 'express';

const CONTAINER_PORT = process.env.CONTAINER_PORT || 8080;
const HOST_PORT = process.env.HOST_PORT || 3000;

const publicDirPath = path.join(import.meta.dirname, 'public');

const app = express();
const server = http.createServer(app);

app.use(express.static(publicDirPath));
app.use(express.json());

server.listen(CONTAINER_PORT, () => console.log(`http://127.0.0.1:${HOST_PORT}`));
