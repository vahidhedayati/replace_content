replace_content
===============

example search replace



# Examples of multi file 

# If you are in the current folder:

             grep "loft_categories" *.java|awk -F":" '{print "replace.sh \"loft_categories\" \"space_categories\" "$1 }'|uniq|/bin/sh


# If you are searching for a specific filename across file system
   
   (below example looks at current path maxdepth of 4 for anything called .java

   runs a search and replace on the files for value to value 2

     for file in $(find . -maxdepth 4 -name  \*.java -print); do  
        echo "Searhing : $file;
       replace.sh "pattern1" "pattern2" $file
     done

