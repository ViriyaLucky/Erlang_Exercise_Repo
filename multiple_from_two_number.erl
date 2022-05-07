-module(multiple_from_two_number).
-export([start/0]). 


start() -> 
    LoopCount = 0,
    while(LoopCount, 1).

while(X, Result) -> 
    if 
        X == 2 -> while(0, 1);
        true -> false
    end,
    NumToMul = case io:fread("Number to Mul: ", "~d") of
        {ok, [R]} -> R;
        {error, _}  ->
            io:format("Error while reading your string"),
            erlang:exit(error_read)
        end,    
    NewResult =  Result * NumToMul,
    if 
        X == 1 -> 
            io:fwrite("Result is ~w~n", [NewResult]);
        true -> false
    end,
    while(X+1, NewResult).
   
