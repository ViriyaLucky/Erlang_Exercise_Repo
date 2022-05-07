-module(print_one_to_ten).
-export([while/1,while/2, start/0]). 

while(L) -> while(L,0). 
while([], Acc) -> Acc;

while([_|T], Acc) ->
   io:fwrite("~w~n",[Acc]), 
   while(T,Acc+1). 
   
start() -> 
   X = [1,2,3,4,5,6,7,8,9,10], 
   while(X).