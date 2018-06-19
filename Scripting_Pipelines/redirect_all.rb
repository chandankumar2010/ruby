#to redirect all output to a file we use &> symbol
#ruby buggy_program.rb &> all_output.txt
#this will overwrite the file contents each time and will create new one if the file doesn't exists


#to append the file we can use the following method
#ruby buggy_program.rb >> all_output.txt 2>&1

#Explaination:Redirection is executed from lest to right
#We run the buggy_program.rb script and redirect its stdout in append mode to all_output.txt
#When we redirect the stderr using '2>' symbol then we redirect it to the stdout stream using '&1' symbol. The '&' symbol indicates we want to redirect it to a stream not to a file
#Summary: we want to redirect stderr wherever the stdout is going.