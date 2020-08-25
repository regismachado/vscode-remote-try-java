# Update the VARIANT arg in devcontainer.json to pick a Java version >= 11
ARG VARIANT=9
FROM debian:${VARIANT}

# Options for setup script
ARG INSTALL_ZSH="true"
ARG UPGRADE_PACKAGES="false"
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Install needed packages and setup non-root user. Use a separate RUN statement to add your own dependencies.
COPY library-scripts/*.sh /tmp/library-scripts/
RUN /bin/bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts/common-debian.sh

#Install dev librarys with asdf using zsh
RUN zsh /tmp/library-scripts/asdf-debian.sh \
    && rm -rf /tmp/library-scripts/asdf-debian.sh
