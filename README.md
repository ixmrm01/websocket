# websocket
Elm Erlang Websocket

## Setup

```
$ rebar3 new app websocket
```

## Elm

```
$ cd websocket
$ mkdir priv
$ cd priv
$ elm init
$ elm install elm/json
```

Create index.html

Create src/Main.elm

```
$ mkdir static
$ elm make src/Main.elm --optimize --output=static/main.js
```

## Erlang

Modify rebar.config

Modify websocket.app.src

Modify websocket_app.erl

Modify websocket_sup.erl

Create ws_h.erl

```
$ cd ..
$ rebar3 shell
```

## Test

http://localhost:8080

## Learn more

* [Elm Ports](https://guide.elm-lang.org/interop/ports.html)
* [Cowboy Websocket example](https://github.com/ninenines/cowboy/tree/master/examples/websocket)
