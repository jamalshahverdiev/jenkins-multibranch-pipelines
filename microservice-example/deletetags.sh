#!/usr/bin/env bash
#===============================================================================
#
#          FILE:  deletetags.sh
# 
#         USAGE:  ./deletetags.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Jamal Shahverdiev (), jamal.shahverdiev@gmail.com
#       COMPANY:  Company LLC
#       VERSION:  1.0
#       CREATED:  05/12/2020 04:16:01 PM +04
#      REVISION:  ---
#===============================================================================

tags='
v1.0
v1.0.1
v1.0.2
v1.0.3
v1.0.4
v1.0.5
v1.0.6
v1.0.7
v1.0.8
'

for tag in $tags
do
    git tag -d $tag
    git push --delete origin $tag
done


