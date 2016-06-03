# udacity-git
Environment for the Udacity [How to Use Git and GitHub](https://www.udacity.com/course/how-to-use-git-and-github--ud775) online course.

## How to use this image
```
docker run -it peron/udacity-git
```
The directory tree mentioned in the course, _version-control_, with its subdirectories, is available
as a volume in the container.
Changes you make within this directory tree, as you progress through the course, will be saved between sessions.

## Tools available in the image
The image contains the following tools:
* **curl** for downloading files
* **diff** to be able to show differences between files
* **git** since it's what the course is about :wink:
* **nano** will be the editor
* **tmux** in case you need to split the screen
