#!/bin/bash

# This is the same script but allows replace.sh to work over line breaks :

#cat aa 
#bass
#base
#replace.sh "bass\nbase" "daft\npunk" aa 
# produces a file with 
#daft
#punk


case $# in
  3)
     	RAND=$$;
	   	cp -p $3 /tmp/$3.$RAND

      in=$(echo -e "$1") out=$(echo -e "$2") perl   -i -p00e 's:\Q$ENV{"in"}:$ENV{"out"}:g' $3
      echo -e "The string has been replaced, if you have mucked up"
     	echo -e "you will find the old file in /tmp/$3.$RAND \n"
	   ;;
  *)
     echo "Usage: "
     echo "$0 STRING_TARGET STRING_REPLACE FILENAME"
     echo
echo "Example: \"_\" \"\-\" myfile"
     echo "will search the content of myfile and replace any patterns of _ with a -"
     exit 1
esac
exit 0
