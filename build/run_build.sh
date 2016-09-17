#!/bin/bash
# runs build

UNAME=`uname`
if [ "${UNAME}" = "Linux" ]; then
    current_script=`readlink -f "$0"`
    mps_home=`dirname "$current_script"`
    mps_home=`dirname "$mps_home"`
elif [ "${UNAME}" = "Darwin" ]; then
    mps_home=`pwd`
    mps_home=`dirname "$mps_home"`
    export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
else 
    echo "Unknown OS: ${UNAME}"
    exit;
fi

mkdir $mps_home/help
export ANT_OPTS=-Xmx1024m
ant -f $mps_home/build/build.xml base -Dmps_home=$mps_home -Dbuild.number=140 "-Dversion=3.1 EAP" -Dbuild.vcs.number=HEAD -Dteamcity.buildConfName=local
