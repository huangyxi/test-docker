ARG	PLUGINS_DIR="/opt/_cloudcli_plugins"

FROM	alpine:latest
ARG	PLUGINS_DIR
WORKDIR	${PLUGINS_DIR}
ADD	https://github.com/cloudcli-ai/cloudcli-plugin-terminal.git cloudcli-plugin-terminal
