#!/bin/bash -x

# Tester code for MNXB01-2018
# usage 
#  tester.sh username 
#

THISFOLDER=`pwd`
USERNAME=$1
ESCRIPT='fortuneteller.sh'
SRUN=${THISFOLDER}/../../../${USERNAME}/HW3/${ESCRIPT}

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
  if [[ $? != 0 ]];  then
     echo "Problems in output$EXT"
  fi
}

runwithopts .noopt 

runwithopts .cleanup --cleanup

runwithopts .printinfo --printinfo

runwithopts .printnclean --printinfo --cleanup

# do diffs
