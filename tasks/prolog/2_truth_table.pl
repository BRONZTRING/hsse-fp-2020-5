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

and(A,B) :- A, B.
or(A,B) :- A; B.
xor(A,B) :- or(A,B), A \= B.
not(A) :- \+ A.
equ(A,B) :- A = B.

bool(true).
bool(fail).

write_eval(Expression) :- Expression, write(true),!.
write_eval(_) :- write(fail),!.

truth_table(A,B, Expression) :- bool(A), bool(B),
    write(A), write(' '), write(B), write(' '), write_eval(Expression), nl, fail.

% truth_table(A,B, and(A,B)).
%    true true true
%    true fail fail
%    fail true fail
%    fail fail fail

% truth_table(A,B, or(A,B)).
%    true true true
%    true fail true
%    fail true true
%    fail fail fail

% truth_table(A,B, xor(A,B)).
%    true true fail
%    true fail true
%    fail true true
%    fail fail fail

% truth_table(A,A, not(A)).
%    true true fail
%    fail fail true

% truth_table(A,B, equ(A,B)).
%    true true true
%    true fail fail
%    fail true fail
%    fail fail true

% truth_table(A,B,or(equ(A,B),xor(A,B)))
%    true true true
%    true fail true
%    fail true true
%    fail fail true
