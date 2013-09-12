#!/bin/bash
STUDENTFILE=
MODULELIST=
GITHUB=http://www.github.com
getListFromFile(){
  result=""; 
  for a in $1; do 
    result=$result" "$a; 
  done; 
  return $result
}

STUDENTLIST=getListFromFile($STUDENTFILE)
MODULELIST=getListFromFile($MODULEFILE)
# Clone repos
for STUDENT in $STUDENTLIST; do
    mkdir -p students/$STUDENT
    for MODULE in $MODULELIST; do
      REPONAME=$GITHUB/$STUDENT/$REPO.git
      git clone $REPONAME
      mv $REPONAME students/$STUDENT
    done 
done
# Test repos
for STUDENT in $STUDENTLIST; do
    for MODULE in $MODULELIST; do
      mv students/$STUDENT/$REPONAME .
      # Run tests for that module
      # Store results
      mv . students/$STUDENT/$REPONAME
    done 
done
#
# Collect the results and dump them on webpage	
#
