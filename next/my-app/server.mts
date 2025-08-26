import { createServer } from 'node:http';
import { Server } from 'socket.io';
import next from 'next';

const nextApp = next({ dev: process.env.NODE_ENV !== 'production' });
const handle = nextApp.getRequestHandler();

nextApp.prepare().then(() => {
  const httpServer = createServer(handle);
  const io = new Server(httpServer);

  io.on('connection', (socket) => {
    const square = 'my-app-square';
    socket.join(square);
    socket.emit('message', `Welcome, ${socket.id}!`);

    socket.on('message', (data) => {
      socket.emit('message', data); // 나에게(echo)
      socket.to(square).emit('message', data); // 나 말고
    }); // socket.to(socketId or room)

    socket.on('disconnect', () => {
      console.log('---> Client disconnected:', socket.id);
    });
  });

  httpServer.listen(3000);
  console.log('Socket Server listening on port 3000');
});
