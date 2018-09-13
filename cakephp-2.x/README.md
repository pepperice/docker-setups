# Docker for CakePHP 2.x (PHP 5.6)

Build a Docker image for CakePHP 2.x and PHP 5.6 using Ubuntu 14.04.

## How to Build

`docker build -t ubuntu-cakephp2 .`

## How to use

To serve your CakePHP project, simply create a volume and map it to DocumentRoot `/var/www/html`. The Apache setup automatically serves the files on `app/webroot`.

## Using with Docker Compose

A sample file `docker-compose.yml.dist` is included for your reference.
