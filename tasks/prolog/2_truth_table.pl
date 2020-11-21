% определить предикаты:
	% and(A,B)
	% or(A, B)
	% xor(A, B)
	% not(A)
	% equ(A,B)
% ипользовать предикат truth_table(A,B, expression) для построения таблиц истинности, например:
% truth_table(A,B,and(A,or(A,B))).
% true true true
% true fail true
% fail true fail
% fail fail fail

and(A, B) :- A, B.

or(A, B) :- A; B.

not(A) :- \+ A.

equ(A,B) :- A = B.

xor(A, B) :- not(equ(A,B)).

expression(E, true) :- E, !.
expression(E, fail).

t(true).
t(fail).

truth_table(A,B,Expression) :-
  t(A), t(B),
  write(A), write(' '), write(B), write(' '),
  expression(Expression, Result),
  write(Result), nl, 
  fail.
  
%?- truth_table(A,B,and(A,xor(A,B))).
%true	true	fail
%true	fail	true
%fail	true	fail
%fail	fail	fail