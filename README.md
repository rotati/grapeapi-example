Grape API on Rack running on Docker
===================================

[ ![Codeship Status for rotati/grapeapi-example](https://app.codeship.com/projects/d2fdb330-1f52-0135-b6b7-56d76522a7b4/status?branch=master)](https://app.codeship.com/projects/220983)

A [Grape](http://github.com/ruby-grape/grape) API mounted on Rack and running on Docker.

* [hello](api/hello.rb): a hello world example that returns a JSON document

Prerequisites
-------------
Make sure that the Docker Command Line Tools is installed either [Docker for Mac](https://docs.docker.com/docker-for-mac/), [Docker for Windows](https://docs.docker.com/docker-for-windows/) or Docker for Ubuntu (https://docs.docker.com/engine/installation/linux/ubuntu/) (depending on your host operating system).

Run Tests
---------
For running RSpec its possible to use docker-compose as follows:

```
$ docker-compose run web rspec
```

To run the full CI tests that would be run in CodeShip use the [Jet CLI tool](https://documentation.codeship.com/pro/builds-and-configuration/cli/) from CodeShip as follows:

```
jet steps
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

Create a ECS Task Definition from docker-compose.yml
----------------------------------------------------
```
ecs-cli compose --project-name hello-world --file docker-compose.yml create
```

TODO
----

Check fully integrated deployment using CodeShip Pro - push to master, run build, deploy
Deploy under outsourcr.com/hello-service/
Deploy another services under outsourcr.com/hello-reverse-service/
Check deployment of both sercices on single & multiple clusters
Check deployment of both sercices as single & multiple tasks

http://docs.aws.amazon.com/AmazonECS/latest/developerguide/common_use_cases.html#microservices
http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cmd-ecs-cli-compose.html
https://github.com/awslabs/ecs-refarch-continuous-deployment
https://blog.codeship.com/deploying-docker-images-to-amazon-ec2-container-service-with-codeship/
https://blog.codeship.com/easy-blue-green-deployments-on-amazon-ec2-container-service/
