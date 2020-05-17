#!/bin/bash

# pull model from
# https://dl.fbaipublicfiles.com/detectron2/COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x/137849600/model_final_f10217.pkl

SRC_URL=https://dl.fbaipublicfiles.com/detectron2/
SRC_FILE=COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x/137849600/model_final_f10217.pkl
OUT_DIR=/data
mkdir -p `dirname $OUT_DIR/$SRC_FILE`
wget -O $OUT_DIR/$SRC_FILE $SRC_URL/$SRC_FILE




