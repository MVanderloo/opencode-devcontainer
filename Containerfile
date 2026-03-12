FROM ghcr.io/astral-sh/uv:python3.13-bookworm

RUN apt-get update && apt-get install -y curl

RUN curl -fsSL https://opencode.ai/install | bash

EXPOSE 4096

CMD ["/root/.opencode/bin/opencode", "serve", "--hostname", "0.0.0.0", "--port", "4096"]
