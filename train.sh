#!/bin/bash
export HF_ENDPOINT="https://hf-mirror.com"

accelerate launch dreamstyler/train.py \
  --num_stages 6 \
  --train_image_path "/root/page617_jittor/A/01/images" \
  --context_prompt "A painting of {} in style of {}" \
  --placeholder_token "<a01>" \
  --output_dir "./outputs/a01" \
  --learnable_property style \
  --initializer_token painting \
  --pretrained_model_name_or_path "stabilityai/stable-diffusion-2-1" \
  --resolution 512 \
  --train_batch_size 8 \
  --gradient_accumulation_steps 1 \
  --max_train_steps 500 \
  --save_steps 100 \
  --learning_rate 0.002 \
  --lr_scheduler constant \
  --lr_warmup_steps 0