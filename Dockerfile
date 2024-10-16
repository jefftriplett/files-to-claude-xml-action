FROM python:3.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app

RUN uv pip install files-to-claude-xml

ENTRYPOINT ["/bin/uvx", "files-to-claude-xml"]
