%%%-------------------------------------------------------------------
%%% @author captcha
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. Sep 2017 下午1:42
%%%-------------------------------------------------------------------
-module(utils_log).
-author("captcha").
-include("aria.hrl").

-compile({no_auto_import, [error/2]}).

%% API
-export([info/1, info/2, info/3]).
-export([debug/1, debug/2, debug/3]).
-export([error/1, error/2, error/3]).


%%  @doc
%%  @doc
-spec info(io:format()) -> ok.
info(Format) ->
    info(Format, []).

%%  @doc
%%  @doc
-spec info(io:format(), list()) -> ok.
info(Format, Argus) ->
    info(pid, Format, Argus).

%%  @doc
%%  @doc
-spec info(pid(), io:format(), list()) -> ok.
info(Pid, Format, Argus) ->
    ?LOG:log(info, Pid, Format, Argus).

%%  @doc
%%  @doc
-spec debug(io:format()) -> ok.
debug(Format) ->
    debug(Format, []).

%%  @doc
%%  @doc
-spec debug(io:format(), list()) -> ok.
debug(Format, Argus) ->
    debug(pid, Format, Argus).

%%  @doc
%%  @doc
-spec debug(pid(), io:format(), list()) -> ok.
debug(Pid, Format, Argus) ->
    ?LOG:log(debug, Pid, Format, Argus).

%%  @doc
%%  @doc
-spec error(io:format()) -> ok.
error(Format) ->
    error(Format, []).

%%  @doc
%%  @doc
-spec error(io:format(), list()) -> ok.
error(Format, Argus) ->
    error(pid, Format, Argus).

%%  @doc
%%  @doc
-spec error(pid(), io:format(), list()) -> ok.
error(Pid, Format, Argus) ->
    ?LOG:log(error, Pid, Format, Argus).
