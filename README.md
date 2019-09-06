# docker_socat

Priviliged socket access for dind-style access.

**Forked to change the linux distro to Alpine. Original: https://github.com/estesp/Dockerfiles/tree/master/dockersocat**

Run the container as follows:

```
docker run -d --name dockersock \
    -v /var/run/docker.sock:/var/run/docker.sock \
	--privileged --userns=host dockersocat
```

Use in other containers:

```
docker run -ti --rm --link dockersock:dockersock dockerclient
/ # export DOCKER_HOST=tcp://dockersock:2375
```

# DockerHub

If you trust my build (you should not trust anyone, actually):
```
docker pull vshulyak/docker_socat:1.0
```
