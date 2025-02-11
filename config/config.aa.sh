#/bin/bash 


## load modules 
module load R/4.0.4


#
INI_DATE=2022030100
END_DATE=2022033123

#
CONFIG_INITIAL=config.aa
 
#R Env
USING_RENV=${USING_RENV-yes}


# What to run
RUN_POINT_VERF=${RUN_VERF-yes}
RUN_POINT_VERF_LOCAL=${RUN_POINT_VERF_LOCAL-yes}

SCORECARDS=${SCORECARDS-yes}
RUN_VOBS2SQL=${RUN_VOBS2SQL-yes}
RUN_VFLD2SQL=${RUN_VFLD2SQL-yes}


## DNOT for USER
MAIN_DIR=$(pwd)
CONFIG_DIR=$MAIN_DIR/config
R_DIR=$MAIN_DIR/R
CONFIG_YAML=$CONFIG_DIR/$CONFIG_INITIAL.yml
CONFIG_R=$CONFIG_DIR/$CONFIG_INITIAL.R

##
export INI_DATE END_DATE
export MAIN_DIR CONFIG_INITIAL  
export USING_RENV
export RUN_POINT_VERF  RUN_VOBS2SQL RUN_VFLD2SQL
export SCORECARDS


export CONFIG_DIR R_DIR CONFIG_YAML CONFIG_R