#General functions that make bash scripting and command line usage easier

mytest() {
         test $@ && echo "true" || echo "false"
}

sshkey() {
        ssh-copy-id -i ~/.ssh/id_rsa.pub creeadmin@$1
}

port() {
        lsof -i :$1
}


