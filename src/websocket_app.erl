%%%-------------------------------------------------------------------
%% @doc websocket public API
%% @end
%%%-------------------------------------------------------------------

-module(websocket_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
	Dispatch = cowboy_router:compile([
		{'_', [
			{"/", cowboy_static, {priv_file, websocket, "index.html"}},
			{"/websocket", ws_h, []},
			{"/static/[...]", cowboy_static, {priv_dir, websocket, "static"}}
		]}
	]),
	{ok, _} = cowboy:start_clear(http, [{port, 8080}], #{
		env => #{dispatch => Dispatch}
	}),
    websocket_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
