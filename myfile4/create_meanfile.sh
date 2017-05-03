EXAMPLE=examples/myfile4
DATA=examples/myfile4
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/img_train_lmdb $DATA/mean.binaryproto

echo "Done."
