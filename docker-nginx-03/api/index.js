import http from 'http';
import express from 'express';

const API_HOST = process.env.API_HOST;
const API_PORT = process.env.API_PORT;

initServer();

function initServer() {
    try {
        if (API_HOST && API_PORT) {
            const app = express();
            const server = http.createServer(app);

            app.get('/', (request, response) => response.json({ data: request.headers }));

            server.listen({ host: API_HOST, port: API_PORT }, () => console.log(`http://${API_HOST}:${API_PORT}`));
        
            return;
        }

        throw new Error(`Cannot start server. Either environment variable [API_HOST="${API_HOST}"] or [API_PORT="${API_PORT}"] is invalid.`);
    }
    catch (error) {
        console.error(error);
    }    
}
