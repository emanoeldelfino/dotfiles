#! /usr/bin/env bash

cat extensions.list | xargs -L1 code --install-extension
