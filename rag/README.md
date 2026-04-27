# RAG_mlops25

## Note on  overall structure

- We want one .venv for the whole project
- one pyproject.toml for whole the project
- one pyproject.toml for backend
- one pyproject.toml for frontend

reason for this:
- is that we will dockerize into 2 services (backend, frontend)
- inside each service/conteiner - want to do 'uv sync' 
- some packages are only use in one service and not in the other 

This is calld separation of concerne
