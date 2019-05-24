# bash-arrays

This was meant as a play exercise for bash arrays. In this script, I set up an array that will only contain 9 total elements, and constantly adds new elements, 
while deleting the oldest element in the array.

This script also ignores passing new elements to the array that have already been added to it prior (so long as it hasn't been wiped out due to being an old element.) You can test this functionality
by adding a line near the top of the script with the following (replace the pound sign with a number of your choosing): `arr=( this# )`

It could be helpful to use the functions in this script as a baseline, say if you are looping through some type of list and don't want to repeat a list item several times in a row.

