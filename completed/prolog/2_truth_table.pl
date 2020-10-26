% ���������� ���������:
% and(A,B) :- A,B.
%or(A,B) :- A;B.
%xor(A,B) :- A \= B.
%not(A) :- A =fail.
%equ(A,B) :- A = B.

% ����������� �������� truth_table(A,B, expression) ��� ���������� ������ ����������, ��������:
% truth_table(A,B,and(A,or(A,B))).
% true true true
% true fail true
% fail true fail
% fail fail fail
bool(true).
bool(fail).
and(A,B) :- A,B.
or(A,B) :- A;B.
xor(A,B) :- A \= B.
not(A) :- A =fail.
equ(A,B) :- A = B.
evaluate(E, true) :- E, !.evaluate(_, fail).
truth_table(A,B,E) :-
    bool(A),
    bool(B),
    write(A),
    write(' \t '),
    write(B),
    write(' \t '),
    evaluate(E, Result),
    write(Result),nl,fail.


%| ?- truth_table(A,B,and(A,or(A,B))).
%true	 true	 true
%true	 fail	 true
%fail	 true	 fail
%fail	 fail	 fail
%false.
%?-
