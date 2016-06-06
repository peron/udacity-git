# udacity-git
Environment for the Udacity 
[How to Use Git and GitHub](https://www.udacity.com/course/how-to-use-git-and-github--ud775) online course.

## How to use this image
```
docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro --device /dev/snd --group-add audio peron/udacity-git
```
The directory tree mentioned in the course, _version-control_, with its subdirectories, 
is available as a volume in the container. 
The tree is pre-populated with the file templates needed.
Changes you make within this directory tree, as you progress through the course, 
will be saved between sessions, as long as you don't remove the container.
Exiting the container can be done with `exit`. To restart a stopped container, do
```
docker start -ia <container-name>
```

### Higher lessons
As you progress through the course, you will need to look at web files
from cloned repositories. The course suggests you use Chrome. This container
uses Firefox instead, which works just as well.

To view a file from inside the container, start _Firefox_ from the command
line, with the file as an argument:
```
firefox index.html &
```
Firefox might display some errors or warnings in the terminal. If the messages interfere
with your work, you can work in a _tmux_ session (see link under **Tools** below),
or redirect the output somewhere.

If you ran the docker command as displayed above,
you can actually watch the course from this Firefox instance.

### Tips
To have the volume survive accidental removals of the container and image,
or image updates, and give the container a friendlier name,
use this little more verbose command
```
docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro --device /dev/snd --group-add audio -v udacity-git:/home/developer --name udacity-git peron/udacity-git
```
Unless you remove the volume with `docker volume rm udacity-git`, 
your progress will survive removals of containers and images.
Exiting and restarting is the same as above.

## Tools available in the image
The image contains the following tools:
* **curl** for downloading files
* **diff** to be able to show differences between files
* **firefox** instead of _Chrome_
* **git** since it's what the course is about :wink:
* **nano** will be the editor
* **[tmux](http://tmux.github.io)** in case you need to split the screen
