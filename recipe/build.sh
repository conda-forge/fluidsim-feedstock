#!/bin/bash

cat > site.cfg <<EOF
[environ]
CARCH=x86-64

EOF

$PYTHON -m pip install --no-deps --ignore-installed -vv .[full]
