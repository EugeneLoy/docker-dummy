import socket
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {
        "container_id": socket.gethostname()
    }
