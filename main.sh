#!/bin/bash
#SBATCH --job-name=preencode_gpu
#SBATCH --output=preencode_gpu_%j.out
#SBATCH --error=preencode_gpu_%j.err
#SBATCH --time=00:30:00
#SBATCH --partition=swarm_l4
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64G
#SBATCH --gres=gpu:1

# Activate Conda
module load conda/python3
source ~/.bashrc
conda activate /iridisfs/scratch/mtm1g19/audioldm_project/fine_proj/stableaudio



# Run pre-encoding
python /iridisfs/scratch/mtm1g19/audioldm_project/fine_proj/stable-audio-tools/pre_encode.py \
  --dataset-config  /iridisfs/scratch/mtm1g19/audioldm_project/fine_proj/stableaudioproject/cough_breath_dataset.json \
  --output-path     /iridisfs/scratch/mtm1g19/audioldm_project/fine_proj/stableaudioproject/dataencoded \
  --model-config    /iridisfs/scratch/mtm1g19/audioldm_project/fine_proj/stableaudioproject/model_config.json \
  --ckpt-path       /iridisfs/scratch/mtm1g19/audioldm_project/fine_proj/stableaudioproject/model.safetensors \
  --batch-size 16 \
  --num-workers 4
