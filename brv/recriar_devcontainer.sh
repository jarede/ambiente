#!/bin/bash
cd ~/projetos/brv/asapcore

devcontainer up --remove-existing-container --mount "type=bind,source=/tmp/.X11-unix,target=/tmp/.X11-unix" --workspace-folder .
devcontainer exec --workspace-folder . --remote-env DISPLAY=$DISPLAY bash

