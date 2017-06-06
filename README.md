# DatabaseServer

Database server of ticket system.

It does not expose 3306 port but using "docker link" to connect with RESTful backend server.

## Installation

* Requirements

  * docker

* Build docker image

  ```shell
  $ docker build -t db-server .
  ```

* Run docker container

  ```shell
  $ docker run -d --name db db-server
  ```

## Model



# Reference

https://github.com/AwesomeTickets/DatabaseServer