#this file is for cree specific functions and aliases, not useful on non-work computers

# # # boxes I ssh into
alias vengeance='ssh creeadmin@vengeance.cree.com'
alias bradbury='ssh creeadmin@bradbury.cree.com'
alias defiant='ssh creeadmin@defiant.cree.com'
alias surac='ssh creeadmin@surac.cree.com'
alias bacnet='ssh creeadmin@bacnet.cree.com'
alias luna='ssh creeadmin@luna.cree.com'
alias enterprise='ssh creeadmin@10.118.192.20'
alias borg='enterprise'
alias ajax='ssh creeadmin@ajax.cree.com'
alias exeter='ssh creeadmin@exeter.cree.com'
alias yamato='ssh creeadmin@yamato.cree.com'
alias manny='yamato'


# # # help files
alias consulhelp='cat ~/bin/consul_script.txt'

#my go exports
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/Users/saskew/GoglandProjects/platform/linkV2

# # # functions for things I do often
gopath() {
        if [ "$#" -ne 1 ]; then
                echo $GOPATH
        else
                export GOPATH=~/GoglandProjects/platform/$1
        fi
}

buildhydraajax() {
        gopath sc1
        mypath='/Users/saskew/GoglandProjects/platform/sc1/src/bitbucket.org/iotp-sc1/startup/'
        env GOOS=linux GOARCH=amd64 go build -o $mypath/HydraLinux $mypath/HeavyWater.go
        scp $mypath/HydraLinux creeadmin@ajax:/tmp
}


# # # places I cd to a lot
alias sc1='cd /Users/saskew/GoglandProjects/platform/sc1/src/bitbucket.org/iotp-sc1/; gopath sc1'
alias linkv2='cd /Users/saskew/GoglandProjects/platform/linkV2/src/git.creedev.com/; gopath linkV2'
alias platform='cd /Users/saskew/GoglandProjects/platform/'
alias tests='cd /Users/saskew/GoglandProjects/platform/sc1/src/bitbucket.org/creesmartcast/platform-tests/; gopath sc1'
