# udacity-git
Environment for the Udacity 
[How to Use Git and GitHub](https://www.udacity.com/course/how-to-use-git-and-github--ud775) online course.

## How to use this image
```
docker run -it peron/udacity-git
```
The directory tree mentioned in the course, _version-control_, with its subdirectories, 
is available as a volume in the container. 
The tree is pre-populated with the file templates needed.
Changes you make within this directory tree, as you progress through the course, 
will be saved between sessions, as long as you dont remove the container.
Exiting the container can be done with `exit`. To restart a stopped container, do
```
docker start -ia <container-name>
```

### Tips
To have the volume survive accidental removes of the container and image, or image updates, 
and give the container a friendlier name, use this little more verbose command
```
docker run -it -v udacity-git:/root/version-control --name udacity-git peron/udacity-git
```
Unless you remove the volume with `docker volume rm udacity-git`, 
your progress will survive removes of containers and images.
Exiting and restarting is the same as above.


## Tools available in the image
The image contains the following tools:
* **curl** for downloading files
* **diff** to be able to show differences between files
* **git** since it's what the course is about :wink:
* **nano** will be the editor
* **[tmux](http://tmux.github.io)** in case you need to split the screen
