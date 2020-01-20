#!/usr/bin/env bash

# Open named file
exec {my_fd}<"3-named-fd.sh"

# Run Python passing the named file descriptor
python "reader.py" ${my_fd}

# Redirect file descriptor to unique close ID -
exec {my_fd}>&-
