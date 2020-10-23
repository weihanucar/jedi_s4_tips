# Source this script to load the propermodules for full jedi-rapids mpi build/run functionality
case $(hostname) in
s4-gateway*)
    echo "No jedi modules exist on s4-gateway.  Use s4-submit for jedi-rapids."
    ;;
s4-submit*)
    module purge
    module load miniconda
    export OPT=/data/users/mmiesch/modules
    #export HDF5_USE_FILE_LOCKING=FALSE
    module use $OPT/modulefiles/core
    module load jedi/intel-impi
    ;;
discover*)
    . /usr/share/modules/init/bash
    export OPT=/discover/nobackup/mmiesch/modules
    module use $OPT/modulefiles/core
    module load other/anaconda3 other/git 
    module load jedi/intel17-impi
    ;;
cheyenne*)
    export OPT=/glade/work/miesch/modules
    module use $OPT/modulefiles/core
    module load python git
    module load jedi/intel-impi
    ;;
esac
