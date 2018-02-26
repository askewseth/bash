#General functions that make bash scripting and command line usage easier

mytest() {
         test $@ && echo "true" || echo "false"
}
