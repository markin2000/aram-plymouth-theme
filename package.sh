#!/bin/bash

VERSION=0.1.0
ARCHIVEDIR=aram

mkdir -p build
rm -rf build/*
cd build

mkdir ${ARCHIVEDIR}

cp ../*.plymouth ${ARCHIVEDIR}
cp ../*.script ${ARCHIVEDIR}
cp ../*.png ${ARCHIVEDIR}
cp ../*.sh ${ARCHIVEDIR}
cp ../README* ${ARCHIVEDIR}
cp ../LICENSE* ${ARCHIVEDIR}
cp ../INSTALL* ${ARCHIVEDIR}
cp -r ../dialog/ ${ARCHIVEDIR}

rm -f ${ARCHIVEDIR}/package.sh

tar cvzf aram-plymouth-theme_v${VERSION}.tar.gz ${ARCHIVEDIR}/

rm -rf ${ARCHIVEDIR}
