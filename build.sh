#!/usr/bin/env bash

if [ ! -x /opt/homebrew/bin/jtd-codegen ] ; then
    echo "Need to install jtd-codegen first: brew install jsontypedef/jsontypedef/jtd-codegen"
    exit 1
fi

mkdir -p ruby/src python/src/user ts/src/user
rm ruby/src/* python/src/user/* ts/src/user/*

jtd-codegen schemas/user.jtd.json --ruby-out ruby/src --ruby-module User
jtd-codegen schemas/user.jtd.json --python-out python/src/user
jtd-codegen schemas/user.jtd.json --typescript-out ts/src/user
