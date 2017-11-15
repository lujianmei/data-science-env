Data Science Development Environment in Docker
# How to use this repository

## Setting ENV ##
   1. Open bin/env.sh
   2. Change your local jupyter notebooks directory.(I did not put all notebook into Docker, i just using a Volume to mount on the container)
   
## Start up your docker-compose ##
   1. Start without a password
`
git clone https://github.com/lujianmei/data-science-notebook.git data-science-notebook
NAME=my-notebook PORT=8888 WORK_VOLUME=data-scientist-notes data-science-notebook/up.sh
`
   2. Start with a password
`
git clone https://github.com/lujianmei/data-science-notebook.git data-science-notebook
data-science-notebook/up.sh
`
# How to rebuild this repository

  Current repository using traivs-ci to test the build, and then push to Docker Cloud
  To do this, you need to :
  1. Create a count on travis-ci.org, and link to github.com account.
  2. Sync repositories to travis-ci.
  3. Select your repository and set it on autobuild while a new push happened.
  4. Setting your DOCKER_NAME and DOCKER_PASSWORD into your build task. Then it will autobuild when there is a change pushed into github.com.
  5. Pls: DOCKER_NAME and DOCKER_PASSWORD is the account name and password on Docker cloud.
  6. So that when a build is past, the images will be push into your Docker Cloud.
`

       -- re-build all docker images, and not push onto docker cloud 
       make build-test-all
       -- re-build all docker images, and push onto docker cloud 
       make release-all

`



