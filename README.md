Grape API on Rack running on Docker
===================================

A [Grape](http://github.com/ruby-grape/grape) API mounted on Rack and running on Docker.

* [hello](api/hello.rb): a hello world example that returns a JSON document

Prerequisites
-------------
Make sure that the Docker Command Line Tools is installed either [Docker for Mac](https://docs.docker.com/docker-for-mac/), [Docker for Windows](https://docs.docker.com/docker-for-windows/) or Docker for Ubuntu (https://docs.docker.com/engine/installation/linux/ubuntu/) (depending on your host operating system).

Run Tests
---------
```
$ docker-compose run web rspec
```

Run App
-------

```
$ docker-compose up
```

### Hello World

Navigate to http://localhost:9292/api/hello with a browser or use `curl`.

```
$ curl http://localhost:9292/api/hello

{"hello":"world"}
```

List Routes
-----------

```
docker-compose run web rake routes
```
