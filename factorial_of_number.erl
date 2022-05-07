-module(factorial_of_number).
-export([start/0]). 


start() -> 
    while().

while() -> 
    Number = case io:fread("Number to factorial : ", "~d") of
        {ok, [R]} -> R;
        {error, _}  ->
            io:format("Error while reading your input"),
            erlang:exit(error_read)
        end,    
    Result = factorial(Number),
    io:fwrite("Result is ~w~n", [Result]),
    while().

factorial(1) -> 1;


factorial(Loop) ->
    Loop * factorial(Loop -1 ).
   
