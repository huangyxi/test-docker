# syntax=docker/dockerfile:1.4

ARG	CLOUDCLI_REF="main"
ARG	CLAUDE_CODE_VERSION="latest"

ARG	NODE_VERSION="24"
ARG	CLOUDCLI_GIT="https://github.com/siteboon/claudecodeui.git"
ARG	APP_DIR="/app" PLUGINS_DIR="/opt/_cloudcli_plugins"
ARG	APP_PATH=${APP_DIR}/node_modules/.bin/cloudcli
ARG	VITE_IS_PLATFORM=true

FROM	node:${NODE_VERSION}-trixie-slim
ARG	APP_DIR PLUGINS_DIR APP_PATH
ARG	TMP_DIR=/tmp/app CLOUDCLI_GIT CLOUDCLI_REF
WORKDIR	${TMP_DIR}
ADD	${CLOUDCLI_GIT}#${CLOUDCLI_REF} .

WORKDIR	${PLUGINS_DIR}
ADD	https://github.com/cloudcli-ai/cloudcli-plugin-terminal.git cloudcli-plugin-terminal
