#!/usr/bin/env bash

# Give the command (python reader.py) an argument which is a file pointing to the output of the subcommand (`echo ...`)
python "reader.py" <(echo "Hello world!")
