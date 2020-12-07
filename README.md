# Practical Project

## Resources

**Presentation:** 

**Trello:** https://trello.com/b/J1zIyMyO/devops-core-practical-project

**Website:** http://34.105.167.64/

## Content Page
* Brief
* Tools
* Project Planning
* Entity Relationship Diagram
* CI/CD Pipeline
* Risk Assessment
* Testing
* Application Design
* Improvements
* Issues

## Brief
I have been tasked to create a simple random generator application consist of 4 services communicating with each other. Service 1 will be served as the front end of the application while service 2 and service 3 will generate random strings which later on will be combined together for service 4 to return a value depending on the content of service 2 + service 3 given to service 4. This application will be built, tested and configurated automatically using Jenkins Pipeline and Docker Swarm with deploy it with multiple workers hosting the web application. Nginx will also be used as a load balancer between all the workers. 

## Tools
The software and languages chosen for this project are listed below.

* Ansible
* Docker
* Flask
* Git
* Jenkins
* MySQL Database
* Unit Testing
* Trello

**Ansible**
In order to make this application as portable as it can possibly be. Ansible is used to perform tasks that are repetitive. For this project there are 3 roles created for the Ansible Playbook. The first role being the **Common** role; this role is used to install anything dependacies that is required across all machine and in this case. Docker. The second role being the **Manager** role; this role is the swarm manager of the docker swarm network that will be used to deploy this application and it manages all the other worker node on the network. Finally the last role is the **Worker** role; this role requires a worker token from the manager role. Ansible enables the quick set up for these roles on any new machine and removes the unecerssary reptitions.

**Docker** 
Docker is lightweight, portable, and self-contained. Each docker images contains everything and the only thing each application needs to run and it would not be effect by other elements like missing dependacies. Docker ensures that the application will run without the fear of the missing elements or the environment is not compatible. As long as the machine can run Docker then the application can be ran. Docker Swarm is also used to deploy the application across muiltple virtual machines which will reduce the stress of each individual machines or when one machine goes down, the service would not be effected by it.

**Flask**
Flask is used to create the basic web application for this project, the python based web frame work enables easy creation of the web application in this task and the build in library especally the random library makes generating random strings or number easy.

**Git**
Git or Github is used as the version control for this project as it offers history tracking, branching and webhook which intergrate well with our automation idea really well. It is also open source and makes calabration easy.

**Jenkins**
Jenkins pipeline is used automate builds for this project, setting up the webhook to the Github repository ensures the latest version of the application gets built and deploy semlessly. Script is used to split the pipeline into different sections. For this project we have: 
- Ansible, where the roles and configuration is set
- Testing, where the application goes through unit testing to see if they application works
- Building, where the docker images is built
- Pushing, where the images is pushed onto Docker Hub
- Deploying, where the docker images is used to compose into a big network of containers and deployed with Swarm

While the newer version of the application is being built, the current version will still be accessible for the user making the downtime minimum.

**MySQL Database**
The database used to store the classes and names for this random generator. 

**Unit Testing**
Unit testing is used to check if the application passes the testing phase and using the coverage option it shows how many percentage of the application is passed and term-missing shows which line has yet being tested which is useful to isolate out the untested code within the application.

**Trello**
Trello is free and easy to use. The block system makes project tracking really easy and the colour label coding makes sorting even easier and visually appealing.


## Project Planning
## Project Diagrams
## Risk Assessment
## Unit Testing
## Application Design
## Improvements
## Issues
## Acknowledgment 
