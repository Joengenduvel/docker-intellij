# docker-intellij
This is a docker image containing Intellij.

This image is based on: https://github.com/Joengenduvel/docker-x11-client

# Running
## Linux
```
docker run -d --rm -e "DISPLAY=$DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix --volumes-from home joengenduvel/docker-intellij
```

## Windows
For detailed instructions, see https://github.com/Joengenduvel/docker-x11-client
```
docker run -d --rm --volumes-from home joengenduvel/docker-intellij
```
