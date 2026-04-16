# 🐳 Docker Cheat Sheet

## Pull Images
- `docker pull ubuntu`
- `docker pull alpine`
- `docker pull nginx`

## List Containers
- Running: `docker ps`
- All: `docker ps -a`

## Manage Containers
- Start: `docker start CONTAINER_ID`
- Stop: `docker stop CONTAINER_ID`
- Remove: `docker rm CONTAINER_ID`
- Remove running (force): `docker rm -f CONTAINER_ID`

## Manage Images
- List images: `docker images`
- Remove image: `docker rmi IMAGE_ID`

## Run Containers
- Run interactively: `docker run -it ubuntu bash`
- Run detached: `docker run -d IMAGE_NAME`
- Run with port mapping: `docker run -d -p 8080:8080 IMAGE_NAME`
- Run with volume: `docker run -v /host/path:/container/path IMAGE_NAME`

## Exec Into Running Container
- Run: `docker exec -it CONTAINER_ID bash`
- docker exec -it <container_name_or_id> /bin/bash
- Alpine: `docker exec -it CONTAINER_ID sh`

## Build Images
- `docker build -t myimage .`

## Save Changes
- Commit container to image: `docker commit CONTAINER_ID newimage`

## Logs
- `docker logs CONTAINER_ID`
- Follow logs: `docker logs -f CONTAINER_ID`

## Clean Up
- Remove stopped containers: `docker container prune`
- Remove unused images: `docker image prune`
- Remove everything unused: `docker system prune`

| Command | Status of Container |	What it creates |
|---------|---------------------|-------------------|
| run |	Doesn't exist yet |	Creates a New Container |
| start |	Exists but is Stopped |	Restarts the Existing Container |
| exec |	Must be Running |	Runs a New Process inside |