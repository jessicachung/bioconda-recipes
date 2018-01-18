#!/bin/bash
set -eu -o pipefail

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin
cp PGDSpider2-cli.jar $outdir/
cp $RECIPE_DIR/pgdspider.sh $outdir/pgdspider
ln -s $outdir/pgdspider $PREFIX/bin
