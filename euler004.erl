% A palindromic number reads the same both ways. The largest palindrome made 
% from the product of two 2-digit numbers is 9009 = 91 × 99.

% Find the largest palindrome made from the product of two 3-digit numbers.

-module(euler004).
-export([largestPalindrome/0]).

largestPalindrome() -> 
  List = lists:seq(101, 999),
  hd(lists:reverse(lists:sort([{I * J} || I <- List, J <- List, isPalindrome(I * J)]))).

isPalindrome(N) ->
  List = integer_to_list(N),
  List =:= lists:reverse(List).
