#!/bin/bash

MDL_CONFIG=COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x
MODEL_WEIGHTS=137849600/model_final_f10217.pkl

python ./demo/demo.py  --config-file ./configs/$MDL_CONFIG.yaml \
                --video-input /data/video1.mp4 \
                --output /data/mask1.mp4 \
                --opts MODEL.WEIGHTS detectron2://$MDL_CONFIG/$MODEL_WEIGHTS
                
#docker run --gpus all -it --shm-size 8gb --env "DISPLAY" --volume "/tmp/.X11-unix:/tmp/.X11-unix:rw" --volume /home/alerteadmin/research/data:/data --volume $HOME/.torch/fvcore_cache:/tmp:rw --name detectron2 detectron2:v0
