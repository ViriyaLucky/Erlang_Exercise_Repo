-module(integers_sum).
-export([start/0]). 


start() -> 
    LoopCount = 0,
    while(LoopCount, 0).

while(X, Result) -> 
    if 
        X == 2 -> while(0, 0);
        true -> false
    end,
    NumToSum = case io:fread("Number to sum: ", "~d") of
        {ok, [R]} -> R;
        {error, _}  ->
            io:format("Error while reading your string"),
            erlang:exit(error_read)
        end,    
    NewResult =  Result + NumToSum,
    if 
        X == 1 -> 
            io:fwrite("Result is ~w~n", [NewResult]);
        true -> false
    end,
    while(X+1, NewResult).
   
