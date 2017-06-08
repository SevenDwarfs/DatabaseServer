docker stop restful-server
docker stop db
docker rm db
docker rmi db-server
docker build -t db-server .
docker run -d --name db db-server
docker restart restful-server

