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
I have been tasked to create a simple random generator application consist of 4 services communicating with each other. Service 1 will be served as the front end of the application while service 2 and service 3 will generate random strings which later will be combined together for service 4 to return a value depending on the content of service 2 + service 3 given to service 4. This application will be built, tested and configurated automatically using Jenkins Pipeline and Docker Swarm with deploy it with multiple workers hosting the web application. Nginx will also be used as a load balancer between all the workers. 

## Tools
The software and languages chosen for this project are listed below.

* Ansible
* Docker
* Flask
* Git
* Gunicorn
* Jenkins
* MySQL Database
* Nginx
* Unit Testing
* Trello



**Ansible**
To make this application as portable as it can possibly be. Ansible is used to perform tasks that are repetitive. For this project there are 3 roles created for the Ansible Playbook. The first role being the **Common** role; this role is used to install anything dependencies that is required across all machine and in this case. Docker. The second role being the **Manager** role; this role is the swarm manager of the docker swarm network that will be used to deploy this application and it manages all the other worker node on the network. Finally, the last role is the **Worker** role; this role requires a worker token from the manager role. Ansible enables the quick set up for these roles on any new machine and removes the unnecessary repetitions.

**Docker** 
Docker is lightweight, portable, and self-contained. Each docker images contains everything and the only thing each application needs to run, and it would not be effect by other elements like missing dependencies. Docker ensures that the application will run without the fear of the missing elements or the environment is not compatible. If the machine can run Docker then the application can be running. Docker Swarm is also used to deploy the application across multiple virtual machines which will reduce the stress of each individual machines or when one machine goes down, the service would not be affected by it.

**Flask**
Flask is used to create the basic web application for this project, the python-based web frame work enables easy creation of the web application in this task and the build in library especially the random library makes generating random strings or number easy.

**Git**
Git or Github is used as the version control for this project as it offers history tracking, branching and webhook which integrate well with our automation idea well. It is also open source and makes collaboration easy.

**Gunicorn**
Running the application through Gunicorn provides the best stabilities as it provides more than 1 worker to host the web application and multiple processes of web application running. This means it can handle more load while providing a more smoothing user experience.

**Jenkins**
Jenkins pipeline is used automate builds for this project, setting up the webhook to the Github repository ensures the latest version of the application gets built and deploy seamlessly. Script is used to split the pipeline into different sections. For this project we have: 
- Ansible, where the roles and configuration are set
- Testing, where the application goes through unit testing to see if they application works
- Building, where the docker images is built
- Pushing, where the images are pushed onto Docker Hub
- Deploying, where the docker images is used to compose into a big network of containers and deployed with Swarm

While the newer version of the application is being built, the current version will still be accessible for the user making the downtime minimum.

**MySQL Database**
The database used to store the classes and names for this random generator. 

**Nginx**
Nginx offers easy to scale while remaining a light weight and minimalistic software making up or down scaling the services quickly. It is also a reverse proxy meaning that users doesn't need to contact your web application directly and it is done by Nginx as the middle man. This means less port needs to be published which leads to a more secure web application.
**Unit Testing**
Unit testing is used to check if the application passes the testing phase and using the coverage option it shows how many percentages of the application is passed and term-missing shows which line has yet been tested which is useful to isolate out the untested code within the application.

**Trello**
Trello is free and easy to use. The block system makes project tracking easy and the colour label coding makes sorting even easier and visually appealing.


## Project Planning
![EarlyTrello](https://imgur.com/Cch1Ybr)
Just like the previous project during week 6 of the QA Training, I used Trello as my project tracking tool due to the user-friendly, organisation and the portability as my focus of choosing this. The trello board will be used to track all the tasks that I need to do, working on or completed. As well as any additional resource links like Github Repository. Link can be found below.

[Trello Board](https://trello.com/b/J1zIyMyO/devops-core-practical-project)

![AfterTrello](https://imgur.com/7vyqHuT)

**Resources** - This section contains links to Git Hub Repo and Risk Assessment making easy access to files and all the elements can be found in the Trello.

**User Stories** - This section contains what the Users would want to do on the application set out for this project. 

**Planning** - This section contains all the tasks that still need to be done and currently on the waiting list. 

**In Progress** - This section is where the tasks are currently doing and not yet finished 

**Completed** - This section is where the tasks are completed and tested. It is working as intended with no bugs. 

**Testing** - This section test runs the code with different tools like Pytest and Gunicorn where the application is running in a production environment and testing the application fully line by line.

## Project Diagrams
In this section I will be going over the architecture of this project:
#### Database
![Database](https://imgur.com/L4f3g2Q)
First is the database, it is a simple data table with no relation. The main role for this database is to hold classes and names which later will be pulled at random by service 2 and service 3 of the application.

#### Jenkins Pipeline
![CIpipeline](https://imgur.com/ZnTAs9C)
This is the flow diagram of the CI Pipeline how each stage is flown to the next stage. The Pipeline starts off with the Github repository receiving a new commit which then triggers the webhook and pulls the newer version from Git hub into Jenkins and start the building process with Ansible being first setting out the roles for easy node then the application gets tested with Unit Testing. Once the testing is done, images is then being built and pushed onto Docker Hub which later on can be pulled back down and deployed with Swarm. While this is processing the current version of the application will still be in service for users.

#### Services
![Services](https://imgur.com/rTt8Fsp)
This image shows how each service is communicating with each other, the database supplies the service 2 and service 3 with data upon sending the GET request then it is generated random class/name. Service 1 takes in both generated strings and adds then together which then it is send to service 4 to let it process the combined string and return with a new piece of information which will be displayed on service 1's web front. Nginx is used as a load balancer when users trying to access service 1 to ensure all machine gets the similar amount of workload.

#### Overview
![Overview](https://imgur.com/CqayYAE)
This is the current CI/CD Pipeline, as mentioned above the tools that is used in this project and this image shows how each tool is connected to each other and how they are used to create this project.

## Risk Assessment
![Before](https://imgur.com/pmi9eXq)
![After](https://imgur.com/56P0ycU)
This is the Risk Assessment where most of the risk that could happen will be noted down and be assessed on how likely it will happen, how much damage it can cause if it were to happen and other ways to mitigate the risk from happening. The first image is the before of the completion of the project and then later the Risk Assessment is revisited for an update.

## Unit Testing
The Unit Testing is taken from the Jenkins Pipeline testing section, most of the test came out to be 100% however there has been some issues with testing in the pipeline that reduced the percentage to around 88%.

#### Service 1
![Service1](https://imgur.com/7UIF6y3)

#### Service 2
![Service2](https://imgur.com/A3RCXIA)

#### Service 3
![Service3](https://imgur.com/0RdhfwN)

#### Service 4
![Service4](https://imgur.com/RUmStuI)

## Improvements
- Need to fix the not 100% Unit testing result
- Give the ability to store random generated Character name into database and save it
## Issues

## Acknowledgment 
Thanks to my tutors during my time at the academy teaching and supporting me throughout the project
