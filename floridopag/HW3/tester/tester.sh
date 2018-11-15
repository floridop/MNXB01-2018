#!/bin/bash

# Tester code for MNXB01-2018
# usage 
#  tester.sh username 
#

THISFOLDER=`pwd`
USERNAME=$1
ESCRIPT='fortuneteller.sh'
SRUN=${THISFOLDER}/../../../${USERNAME}/HW3/${ESCRIPT}
# fix for calleahl
#SRUN=${THISFOLDER}/../../../${USERNAME}/${ESCRIPT}
# fix for alexwyk
#SRUN=${THISFOLDER}/../../../${USERNAME}/hw3/${ESCRIPT}


if [[ -z $SRUN ]]; then
   echo "missing filename $SRUN"
   exit 1
fi

mkdir -p "${USERNAME}_test"

cd "${USERNAME}_test"

# run tests with options and save output to respective files

# no option

# usage: runwithopts <extension> <options>
runwithopts() {
  EXT=$1
  OPTION1=$2
  OPTION2=$3

  echo $EXT
  $SRUN $OPTION1 $OPTION2 &> output$EXT
  RESULT=$?
  if [[ $RESULT != 0 ]];  then
     echo "Problems in output$EXT"
  fi
}

# usage file1 file2 outputfile
dodiffs() {
  HEREFILE=$1
  RESULTFILE=$2
  OUTPUTDIFF=$3

  diff ${HEREFILE} ${THISFOLDER}/../result/${RESULTFILE} &> ${OUTPUTDIFF}

  RESULT=$?
  if [[ $RESULT != 0 ]];  then
     echo "Problems in diff ${OUTPUTDIFF}"
  fi


}


runwithopts .noopt 

runwithopts .cleanup --cleanup

runwithopts .printinfo --printinfo

runwithopts .printnclean --printinfo --cleanup

# do diffs

dodiffs output.noopt simple_call_output noopt.diff
dodiffs output.cleanup call_with_cleanup_output cleanup.diff
dodiffs output.printinfo call_with_printinfo_output printinfo.diff

