# php-fpm-nginx-docker-compose

Configuring and installing PHP+Nginx is a pain. This Docker-compose provides a hassle-free customizable solution to get started in less than 5 minutes.

* This configuration assumes `180.28.0.0/16` subnet is free and not used by any other service installed on the system.
* Assumes port `433` and port `80` are free to be used by `Nginx` container.
* This configuration assumes you're running Linux to be able to execute all commands in `bin/init.sh` successfully.
* This configuration assumes you've already installed Docker and Docker-Compose.
* All files in `sourcefiles/www` directory should be owned by user and group `www`. This is where your PHP app will live.
* PHP ini overrides are placed in `sourcefiles/www-php-fpm` directory.
* Nginx configuration files are placed in `sourcefiles/nginx` directory.
* Nginx access logs get stored to `logs/nginx` directory.
* Certain PHP extensions are installed by the configuration according to `Dockerfile-www.dockerfile` to ensure compatibility for common-use applications.
* Environment variables for `docker-compose` configuration is stored in `.env`.
* Environment variables for PHP container are stored in `www.env`.
* Change your Nginx domain name configuration via file `sourcefiles/nginx/conf.d/app.conf`.

If you're running Ubuntu, install Docker and Docker-Compose with:

```
$ apt-get install docker.io docker-compose
```

Once you've cloned this git repository, fire up the installation with:

```
$ sh bin/init.sh
```

Suggestions for improvements are welcome.
