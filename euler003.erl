% The prime factors of 13195 are 5, 7, 13 and 29.

% What is the largest prime factor of the number 600851475143 ?

-module(euler003).
-export([largestPrimeFactor/1]).


largestPrimeFactor(N) ->
  F = [X || X <- lists:seq(2, trunc(math:sqrt(N))), N rem X =:= 0],
  case F of
    [] -> N;
    [H|_] -> largestPrimeFactor(N div H)
  end.



