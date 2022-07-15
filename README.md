# README

To avoid user permission issues:
Before you build with docker compose
Add this to the bottom of your ~/.bashrc file or equivalent if you use other shell.
Make sure you create a new terminal session after you make changes to .bashrc, .zshrc, etc, or they won't be applied.

```
export APP_USER_UID=$(id -u)
export APP_GROUP_GID=$(id -g)
```

You can also build correctly with this command
```
APP_USER_UID=$(id -u) APP_GROUP_GID=$(id -g) docker-compose up --build
```

Optional, also add aliases to your bashrc file, so be able to type less
```
alias c = "docker-compose"
alias w = "docker-compose run web"
```

After that, you can use the app normally, you might want to setup the database with

```
docker-compose run web rails db:setup 
```

And run it with 

```
docker-compose up 
```