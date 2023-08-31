#!/bin/sh
SRC_DIR=./
DST_DIR=./gen
PWD_DIR=$(pwd)
PROTOC=${PWD_DIR}/../server/src/protobuf/bin/protoc

#C++
mkdir -p $DST_DIR/cpp
$PROTOC -I=$SRC_DIR --cpp_out=$DST_DIR/cpp/ $SRC_DIR/*.proto

# #JAVA
# mkdir -p $DST_DIR/java
# $PROTOC -I=$SRC_DIR --java_out=$DST_DIR/java/ $SRC_DIR/*.proto

# #PYTHON
# mkdir -p $DST_DIR/python
# $PROTOC -I=$SRC_DIR --python_out=$DST_DIR/python/ $SRC_DIR/*.proto

CPP_DIR=../server/src/base/pb/protocol

#C++
# cp $DST_DIR/cpp/* $CPP_DIR/

# rm -rf ./gen