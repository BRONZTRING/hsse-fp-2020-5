% ���� ����� ������ ���� father(person1, person2) (person1 is the father
% of person2)
% ���������� ���������� ����� ����������:
% 1. brother(X,Y) - ������������ �������� �� ��������� ��������
% 2. cousin(X,Y) - ������������ �������� �� ��������� �����������
% ��������
% 3. grandson(X,Y) - ������������ �������� �� �������� � ������
% ��������� Y
% 4. descendent(X,Y) - ������������ �������� �� �������� � ��������
% ��������� Y
% 5. ��������� � �������� �������� ������ ��������� ���� ���������
%
	father(alan,benny).   % 1
	father(alan,conny).   % 2
	father(benny,david).  % 3
	father(benny,ethan).  % 4
	father(conny,fred).   % 5

% ������� � ����� ������� � ����� ������ ������������ ������ ��������

%	?- brother(X,Y).
%	?- cousin(X,Y).
%	?- grandson(X,Y).
%	?- descendant(X,Y).

        brother(X,Y):-father(Z,Y),father(Z,X), X\=Y.
        cousin(X,Y):-father(I,J),father(I,Z),father(J,X),father(Z,Y),J\=Z,X\=Y.
        grandson(X,Y):-father(X,Z),father(Z,Y).
        descendant(X,Y):-father(Y,X).
        descendant(X,Y):-father(Z,X),descendant(Z,Y).

 % ������ �������:

%       ?- brother(X,Y).
%       X = conny,
%       Y = benny ;
%       X = benny,
%       Y = conny ;
%       X = ethan,
%       Y = david ;
%       X = david,
%       Y = ethan ;
%       false.

%       ?- cousin(X,Y).
%       X = david,
%       Y = fred ;
%       X = ethan,
%       Y = fred ;
%       X = fred,
%       Y = david ;
%       X = fred,
%       Y = ethan ;
%       false.

%       ?- grandson(X,Y).
%       X = alan,
%       Y = david ;
%       X = alan,
%       Y = ethan ;
%       X = alan,
%       Y = fred ;
%       false.

%       ?- descedant(X,Y).
%       X = benny,
%       Y = alan ;
%       X = conny,
%       Y = alan ;
%       X = david,
%       Y = benny ;
%       X = ethan,
%       Y = benny ;
%       X = fred,
%       Y = conny ;
%       X = david,
%       Y = alan ;
%       X = ethan,
%       Y = alan ;
%       X = fred,
%       Y = alan ;
%       false.












