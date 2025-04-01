#!bin/bash
devcontainer exec --workspace-folder . --remote-env DISPLAY=$DISPLAY bash -c "nvim ."

