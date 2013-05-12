#!/bin/bash
#
# v July 2000
# save file as replace.sh
# cp replace.sh /usr/local/bin; chmod +x /usr/local/bin/replace.sh
#######################################################################

case $# in
  3)
  in1="$1"
  out1="$2";
  cp $3 /tmp/$3
  in=$in1 out=$out1 perl -pi -e 's/\Q$ENV{"in"}/$ENV{"out"}/g' $$3 
    # cat $3| sed "s/$1/$2/g" | sed "s/  / /g" > .temp.newname
   #  echo -e "The string has been replaced, if you have mucked up"
    # echo -e "you will find the old file in /tmp/$3 \n"
    # mv $3 /tmp/$3
   #  mv .temp.newname $3
     ;;
  *)
     echo "Usage: RESTORE.SH STRING_TARGET STRING_REPLACE FILENAME"
     echo
     echo "Example: string-rename \"_\" \"\ \" my_file"
     echo "  will rename \"my_file\" to \"my file\""
     exit 1
esac
exit 0

###############################################################################################
# Examples of multi file 
###############################################################################################

#method to search and replace content

#if you are in the current folder:

# grep "loft_categories" *.java|awk -F":" '{print "replace.sh \"loft_categories\" \"space_categories\" "$1 }'|uniq|/bin/sh


# If you are searching for a specific filename (below example looks at current path maxdepth of 4 for anything called .java
# runs a search and replace on the files for value to value 2

 #  for file in $(find . -maxdepth 4 -name  \*.java -print); do  
 #     echo $file;
 #     replace.sh "pattern1" "pattern2" $file
 #   done





