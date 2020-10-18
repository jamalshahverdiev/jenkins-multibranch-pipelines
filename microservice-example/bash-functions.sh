#!/usr/bin/env bash

identifyMergeRequest() {
    exist='no'
    mergeString=$1
    if [[ $mergeString == *"develop) Merge pull request"* ]]
    then
      if [[ $mergeString == *"to develop" ]]
      then
         exist='yes'
      fi
    fi
    
    if [[ $mergeString == *"preprod) Merge pull request"* ]]
    then
      if [[ $mergeString == *"to preprod" ]]
      then
         exist='yes'
      fi
    fi
    echo $exist
}

identifyGitTag() {
    tag='no'
    if [[ -n $(git describe --abbrev=0 --tags 2> /dev/null) ]]
    then
        tag=$(git describe --abbrev=0 --tags)
    fi
    echo $tag
}
