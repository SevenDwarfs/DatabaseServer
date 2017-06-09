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

* need to stop web-service server container before building and build after building

  ```shell
  docker rm restful-server
  docker rmi kinpzz/restful-server
  docker build -t kinpzz/restful-server ../WebService
  docker run -d -p 127.0.0.1:8082:8082 --name restful-server --link db:db-server kinpzz/restful-server
  ```

## Model



# Reference

https://github.com/AwesomeTickets/DatabaseServer