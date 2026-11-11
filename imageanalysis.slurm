#!/bin/bash
#SBATCH --job-name=image_analysis
#SBATCH --partition=compute
#SBATCH --nodes=1
#SBATCH --mem=700G
#SBATCH --cpus-per-task=120
#SBATCH --account=pro00117942
#SBATCH --time=12:00:00
#SBATCH --mail-user=ner22@duke.edu

module load miniforge
conda run -n survivor jupyter nbconvert --to script ImageAnalysis.ipynb 
conda run -n survivor python3 -u ImageAnalysis.py
rm ImageAnalysis.py
