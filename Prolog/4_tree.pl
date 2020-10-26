% ��������� �������� qsort(L,K) �� ����������� ������� ����������� ��������:
% balanced_tree(L,T) - ������� �� �������� ������ ������ ���������������� �������� ������ ������
% ��� ���������� ������ ������������ ���������  �������:
% empty - ������ ������
% instant(R, L, R) - �������� ������ � ������ R � ����� ������������ L � R ������������� (����� � ������)
%
qsort([],[]).
qsort([Head | Tail], K) :-
    insert(Head,Tail, A, B),
    qsort(A, AK),
    qsort(B, BK),
    append(AK,[A|BK],K).

%insert - �������������� ��������������� ��������
insert(_,[],[],[]).
insert(X,[Y | Tail],[Y| A],B) :- X > Y, insert(X, Tail, A, B).
insert(X, [Y|Tail],A, [Y | B]):-insert(X, Tail, A, B).

split_tree(L, Left, Right):- append(Left, Right, L),
                           length(L, Len),
                           ML is div(Len, 2),
                           length(Left, ML).

balanced_tree([], empty).

balanced_tree(L, instant(Root, Left, Right)) :-
    split_tree(L, Left2, [Root|Right2]),
    balanced_tree(Left2, Left),
    balanced_tree(Right2, Right).

balanced_tree(L, T) :- qsort(L, S), balanced_tree(S, T).
