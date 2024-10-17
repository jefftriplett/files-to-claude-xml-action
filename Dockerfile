FROM ghcr.io/astral-sh/uv:bookworm-slim

ENV UV_LINK_MODE=copy

RUN --mount=type=cache,target=/root/.cache/uv \
    --mount=type=bind,source=uv.lock,target=uv.lock \
    --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
    uv sync --frozen --no-install-project

WORKDIR /app

ENTRYPOINT ["uvx", "files-to-claude-xml"]
