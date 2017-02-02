#!/bin/bash

locate $1 | nl
read SELECTION
zathura $(locate $1 | sed -n "${SELECTION}p")
