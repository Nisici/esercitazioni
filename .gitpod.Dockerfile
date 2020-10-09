FROM gitpod/workspace-full

RUN sudo apt-get update \
    && sudo apt-get install -y language-pack-it \
    && sudo rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/gitpod/.bashrc.d/ \
  && echo -e 'unset JAVA_TOOL_OPTIONS\nexport PATH="$PATH":/workspace/esercitazioni/.bin' > /home/gitpod/.bashrc.d/00-scythe
