export HF_ENDPOINT="https://hf-mirror.com"

python dreamstyler/inference_t2i.py \
  --sd_path "stabilityai/stable-diffusion-2-1" \
  --embedding_path ./outputs/a01/embedding/final.bin \
  --prompt "A painting of a dolphin in the style of {}" \
  --saveroot ./outputs/Asample01 \
  --placeholder_token "<a01>"