[![Build Status](https://secure.travis-ci.org/gauntlt/gauntlt-server.png?branch=master)](http://travis-ci.org/gauntlt/gauntlt-server)

Notice: Under active development and is no way ready for use in beta or even alpha.

gauntlt-server
==============

Gauntlt server provides an API and a web front end for gauntlt.  You can trigger gauntlt attacks and visually see the output of them.

For Developers
==============
Gauntlt-server is a golang web application and REST API.  It interacts with gauntlt inside a docker container.

To spin up the stack on your machine:

- Install and start up docker-machine
- Start up a gauntlt-docker container

To start up gauntlt-server:

```
make build
make start
```

We also provide:

```
make lint
make test
```

License
=======
See LICENSE.md for details.
