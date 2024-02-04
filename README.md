# server-config
Creates a Docker image that will start a github self-hosted runner with docker pre-installed


This is a github action for creating a docker image that will run as a foundation for deploying an application using a github self-hosted runner (CI/CD pipeline).

The docker image created will have docker installed as well as the github actions self-hosted runner applicaton.

This action will then push the created image to a DockerHub repository passed in as input (along with a username and password).

To access the image on your server, login to DockerHub on your machine, pull the image and run it. The image will have docker installed and will start up the self-hosted runner listener for the repository that you pass in as input. (You must also create an access token for the repository that will listen for jobs on, and pass it as input)

Use this action only once to create to foundation image for your server. If the server shuts down, you will need to re-run the docker image.
