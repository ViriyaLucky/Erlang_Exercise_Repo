-module(scan_name_user_and_output).
-export([start/0]).

start() -> 
    Flag = case io:fread("Give me the flag: ", "~s") of
        {ok, [R|_]} -> R;
        {error, _}  ->
            io:format("Error while reading your string"),
            erlang:exit(error_read)
    end,    
    io:put_chars(["Hello ", Flag, "!~n"]).