let socket: WebSocket | null = null

export function connect(onMessage: (msg: string) => void) {
  socket = new WebSocket("ws://localhost:8000/ws/chat")

  socket.onmessage = (event) => {
    onMessage(event.data)
  }
}

export function sendMessage(msg: string) {
  if (socket && socket.readyState === WebSocket.OPEN) {
    socket.send(msg)
  }
}
