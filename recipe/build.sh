#!/bin/bash
set -xeuo pipefail

# taken from https://github.com/conda-forge/scikit-image-feedstock/blob/main/recipe/build.sh

mkdir builddir

# need to run meson first for cross-compilation case
${PYTHON} $(which meson) setup ${MESON_ARGS} \
    builddir || (cat builddir/meson-logs/meson-log.txt && exit 1)

${PYTHON} -m build --wheel --no-isolation --skip-dependency-check -Cbuilddir=builddir
${PYTHON} -m pip install dist/fluidsim*.whl
