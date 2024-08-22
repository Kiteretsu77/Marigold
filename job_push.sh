#!/bin/bash

#SBATCH --job-name=train_Marigold
#SBATCH --mail-user=boyangwa@umich.edu
#SBATCH --mail-type=END,FAILED
#SBATCH --nodes=1
#SBATCH --account=jjparkcv1
#SBATCH --partition=spgpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=64GB
#SBATCH --cpus-per-gpu=8
#SBATCH --time=07-00:00:00
#SBATCH --output=%x-%j.log

python train.py --config config/train_marigold.yaml
