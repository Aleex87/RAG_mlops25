FROM python:3.13-slim

WORKDIR /app/rag

# copy the backend folder name it backend into /app/rag/backend in conteiner
COPY backend backend
COPY knowledge_base knowledge_base

# this makes the package structure intact -> will see the rag folder 
ENV PYTHONPATH=/app

# install uv on the container
RUN  pip install --no-cache-dir uv

WORKDIR /app/rag/backend

# this install the dependency specified in pyproject-toml into a .venv
RUN uv sync --no-dev

CMD ["uv", "run", "uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]