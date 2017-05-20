Grape API on Rack running on Docker
===================================

A [Grape](http://github.com/ruby-grape/grape) API mounted on Rack.

* [hello](api/hello.rb): a hello world example that returns a JSON document

Run
---

```
$ bundle install
$ rackup
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
rake routes
```
