% This file is part of "Enms" (http://sourceforge.net/projects/enms/)
% Copyright (C) 2012 <Sébastien Serre sserre.bx@gmail.com>
% 
% Enms is a Network Management System aimed to manage and monitor SNMP
% target, monitor network hosts and services, provide a consistent
% documentation system and tools to help network professionals
% to have a wide perspective of the networks they manage.
% 
% Enms is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% Enms is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with Enms.  If not, see <http://www.gnu.org/licenses/>.
-module(locator_event_handler).
-behaviour(gen_event).

-export([
    init/1,
    handle_event/2,
    handle_call/2,
    handle_info/2,
    terminate/2,
    code_change/3
]).

init(_Arg) ->
    {ok, no_state}.

handle_event({new_target, _Target}, State) ->
    %io:format("locator handle event, ~p~n",[Target]),
    {ok, State};

handle_event(_Other, State) ->
    {ok, State}.

handle_call(_Call, State) ->
    {ok, not_implemented, State}.

handle_info(_Info, State) ->
    {ok, State}.

terminate(_Term, _State) ->
    ok.

code_change(_, State, _) ->
    {ok, State}.
