#!/usr/bin/env sh
MY=examples/myfile4

TRAIN_DATA_ROOT=/home/ghz/caffe/examples/myfile4/data/
VAL_DATA_ROOT=/home/ghz/caffe/examples/myfile4/data/

echo "Create train lmdb.."
rm -rf $MY/img_train_lmdb
build/tools/convert_imageset \
--shuffle \
--resize_height=32 \
--resize_width=32 \
$TRAIN_DATA_ROOT \
$MY/data/train.txt \
$MY/img_train_lmdb

echo "Create test lmdb.."
rm -rf $MY/img_val_lmdb
build/tools/convert_imageset \
--shuffle \
--resize_height=32 \
--resize_width=32 \
$VAL_DATA_ROOT \
$MY/data/val.txt \
$MY/img_val_lmdb

echo "All Done.."
