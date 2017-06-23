### read the input file into the variable 'document' ###
document=$(cat $1)

### count the number of footnotes in the document and cycle through them in a loop ###
num_footnotes=$(grep -c '"dd-thefootnotes"' $1)
for nth_footnote in $(seq 1 $num_footnotes)
do
  ### use grep to find the line containing the nth footnote, pipe that through sed to cut out the footnote itself ### 
  the_footnote=$(grep '"note'$nth_footnote'"' $1 | sed 's/.*dd-thefootnotes">\(.*\)/\1/')

  ### escape any '&' characters in the footnote and strip HTML tags ###
  corrected_footnote=$(echo "$the_footnote" | sed 's|\&|\\\&|g; s|<\/.*>||g; s|<.*>||g')

  ### pipe the document through sed, finding and replacing the <A> tag for the nth footnote, return the substitution back to the 'document' variable ###
  document=$(echo "$document" | sed 's|<A NAME="text'$nth_footnote'" HREF="#note'$nth_footnote'">|<A HREF="" TITLE="'"$corrected_footnote"'">|')
done

### write the new/corrected document to a temporary file ###
echo "$document" > temp.html
