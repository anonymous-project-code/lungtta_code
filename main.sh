#!/bin/bash
#SBATCH --job-name=lungtta_preencode
#SBATCH --output=lungtta_preencode_%j.out
#SBATCH --error=lungtta_preencode_%j.err
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64G
#SBATCH --gres=gpu:1

# Activate Conda environment
module load conda/python3
source ~/.bashrc
conda activate stableaudio

# Project paths
PROJECT_DIR="/path/to/stableaudioproject"
STABLE_AUDIO_TOOLS="/path/to/stable-audio-tools"

# Run pre-encoding
python "${STABLE_AUDIO_TOOLS}/pre_encode.py" \
  --dataset-config "${PROJECT_DIR}/cough_breath_dataset.json" \
  --output-path "${PROJECT_DIR}/dataencoded" \
  --model-config "${PROJECT_DIR}/model_config.json" \
  --ckpt-path "${PROJECT_DIR}/model.safetensors" \
  --batch-size 16 \
  --num-workers 4
