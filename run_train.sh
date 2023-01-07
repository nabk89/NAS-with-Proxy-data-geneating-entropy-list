#!/bin/bash

#for model in resnet20 resnet32 resnet44 resnet56 resnet110 resnet1202
#do

dataset=cifar10
model=resnet20
CUDA_VISIBLE_DEVICES="0" python trainer.py  --arch=$model --dataset $dataset  --save-dir=save_${dataset}_${model}_ijcai |& tee log_${dataset}_${model}

dataset=cifar100
model=resnet56
#CUDA_VISIBLE_DEVICES="0" python trainer.py  --arch=$model --dataset $dataset  --save-dir=save_${dataset}_${model}_ijcai |& tee -a log_${dataset}_$model

dataset=svhn
model=resnet20
#CUDA_VISIBLE_DEVICES="0" python trainer.py  --arch=$model --dataset $dataset  --save-dir=save_${dataset}_${model}_ijcai |& tee -a log_${dataset}_$model

#done
