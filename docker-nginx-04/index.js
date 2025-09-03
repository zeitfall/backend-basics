import http from 'http';
import express from 'express';

const SERVER_HOST = process.env.SERVER_HOST;
const SERVER_PORT = process.env.SERVER_PORT;

initServer();

function initServer() {
    try {
        if (SERVER_HOST && SERVER_PORT) {
            const app = express();
            const server = http.createServer(app);

            app.get('/', (request, response) => {
                console.log(`Request is forwarded to ${SERVER_HOST}:${SERVER_PORT}`);

                response.json({ data: request.headers });
            });

            server.listen({ host: SERVER_HOST, port: SERVER_PORT }, () => console.log(`http://${SERVER_HOST}:${SERVER_PORT}`));
        
            return;
        }

        throw new Error(`Cannot start server. Either environment variable [SERVER_HOST="${SERVER_HOST}"] or [SERVER_PORT="${SERVER_PORT}"] is invalid.`);
    }
    catch (error) {
        console.error(error);
    }    
}
