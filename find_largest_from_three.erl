-module(find_largest_from_three).
-export([start/0]). 


start() -> 
    LoopCount = 0,
    while(LoopCount, 0).

while(X, Largest) -> 
    if 
        X == 3 -> while(0, 0);
        true -> false
    end,
    io:format("Number to compare - ~w: ", [X+1]),
    NewNumToCompare = case io:fread("", "~d") of
        {ok, [R]} -> R;
        {error, _}  ->
            io:format("Error while reading your input"),
            erlang:exit(error_read)
        end,    
    NewLargest =  if
        NewNumToCompare > Largest -> NewNumToCompare;
        true -> Largest
    end,
    if 
        X == 2 -> 
            io:fwrite("Result is ~w~n", [NewLargest]);
        true -> false
    end,
    while(X+1, NewLargest).
   
