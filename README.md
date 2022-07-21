# README

To avoid user permission issues:
Before you build with docker compose
Add this to the bottom of your ~/.bashrc file or equivalent if you use other shell.
Make sure you create a new terminal session after you make changes to .bashrc, .zshrc, etc, or they won't be applied.
You can see your groupname and username by running the id command.
```
export APP_USER_UID=$(id -u)
export APP_GROUP_GID=$(id -g)
export APP_GROUP=yourusername
export APP_USER=yourgruponame
```

You can also build correctly with this command
```
APP_USER_UID=$(id -u) APP_GROUP_GID=$(id -g) docker-compose up --build
```

Optional, also add aliases to your bashrc file, to be able to type less
```
alias c = "docker-compose"
alias u = "docker-compose up"
alias d = "docker-compose down --remove orphans"
alias w = "docker-compose run web"
alias a = "docker-compose run api"
```

API setup
--

You can use the app as you would do with any rails app, you might want to setup the database with

```
docker-compose run web rails db:setup 
```

WEB setup
--

you need to run yarn before you bring the web image up or the dependencies will not be installed

```
docker compose run web yarn
```

Running the application
--
```
docker-compose up 
```

Short version
--
Make sure you export your user variables somehow, then run:
```
docker compose build
docker compose run api rails db:setup
docker compose run api rails db:migrate
docker compose run web yarn
docker compose up
```