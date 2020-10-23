#!/usr/bin/bash
#SBATCH --job-name=hofx_g
#SBATCH --mail-user=weihan@ucar.edu
#SBATCH --time=00:29:00
#SBATCH --partition=ivy
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=1

export SLURM_EXPORT_ENV=ALL

mkdir outputlog
srun --ntasks=12 --cpu_bind=core --distribution=block:block /data/users/whan/JEDI/fv3-bundle/build/bin/fv3jedi_hofx_nomodel.x  config/atms.n20.hofx3d.jedi.yaml  outputlog/log_atms_n20_3dhofx_2020100100

