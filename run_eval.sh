#!/bin/bash

# cifar10
CUDA_VISIBLE_DEVICES="0" python trainer.py --evaluate --pretrained --model_path $1 --arch resnet20 --dataset cifar10

# cifar100
#CUDA_VISIBLE_DEVICES="0" python trainer.py --evaluate --pretrained --model_path $1 --arch resnet56 --dataset cifar100

# SVHN
#CUDA_VISIBLE_DEVICES="0" python trainer.py --evaluate --pretrained --model_path $1 --arch resnet20 --dataset svhn
