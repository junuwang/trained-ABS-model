#!/bin/bash
fileid="1CwSKcVCMFaqKpe7NI39q_a0WVAGFs_kF"
filename="abs-model.th"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
