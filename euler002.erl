% Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
% By starting with 1 and 2, the first 10 terms will be:

% 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

% By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
% find the sum of the even-valued terms.

-module(euler002).
-export([sumEvenFib/1]).


sumEvenFib(Max) -> sumEvenFib(1, 2, 2, Max).

sumEvenFib(X, Y, EvenSum, Max) ->
  Z = X + Y,
  case Z < Max of
    true -> sumEvenFib(Y, Z, if Z rem 2 == 0 -> EvenSum + Z; true -> EvenSum end, Max);
    false -> EvenSum
  end.




