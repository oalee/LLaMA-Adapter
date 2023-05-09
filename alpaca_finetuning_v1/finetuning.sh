#!/bin/bash
python finetuning.py \                             
         --model Llama7B_adapter \
         --llama_model_path /data/weights/llama/ \
         --data_path /data/datasets/alpaca/alpaca_data_cleaned.json \
         --adapter_layer 30 \
         --adapter_len 10 \
         --max_seq_len 512 \
         --batch_size 2 \
         --epochs 5 \
         --warmup_epochs 2 \
         --blr 9e-3 \
         --weight_decay 0.02 \
         --output_dir ./checkpoint/ 