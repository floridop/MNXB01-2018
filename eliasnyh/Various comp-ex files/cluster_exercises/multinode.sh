#!/bin/sh
#SBATCH -J "multi job"
#SBATCH --time=1 
srun hostname |sort
sleep 5m

