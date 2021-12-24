# scripts
shell scripts

Notes:

12/24/22 added kyve/build.sh
what: build.sh is an alternative to docker, it takes the docker file and builds from binary using yarn
how: this script updates all kyve nodes with git, curl, yarn, and node. it uses the latest docker release but without the use of docker 
Why: binarys are nolonger included in the the version updates. docker drains system resources and struggles on an old computers, rasberry pie, or free AWS.

Needs: latest versions of: ubuntu, git, yarn, node, curl, 
       a directory for your kyve nodes, arweave-keyfile, and build.sh. for example --> ./scripts/kyve/build.sh
       change build.sh to be an executable file --> chmod +x build.sh 

