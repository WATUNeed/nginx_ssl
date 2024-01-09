from fastapi import FastAPI

app = FastAPI(docs_url=None, redoc_url=None)


@app.get('/api/')
async def index():
    return {'hello': 'World!'}
