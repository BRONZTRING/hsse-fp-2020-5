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
or(A, B) :- A; B.
xor(A, B) :- A \= B.
not(A) :- \A.
equ(A,B) :- A = B.

bool(true).
bool(false).

truth_table(A,B, Z) :- write('A'), write('\t'), write('B'), write('\t'), write('Res'), nl, bool(A), bool(B), 
			write(A), write('\t'), write(B), write('\t'), count(Z, C), write(C), write('*\n'), nl, false.


count(A, true) :- A, !.

count(_, false).
