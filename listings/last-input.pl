% background knowledge
head([H|_], H).
tail([_|T], T).

% positive examples
last([1], 1).
last([1,2], 2).
last([1,2,3], 3).

% negative examples
last([1,2], 1).
last([1,2,3], 1).

% meta-rules 
P(A, B) :- Q(A, C), R(A, B).
P(A, B) :- Q(A, D), P(D, B). % recursive meta-rule!

% expected
last([X], X). % or last(L,X) :- tail(L,[]), head(L,X).
last([_|T], X) :- last(T, X). % last(L,X) :- tail(L,T), last(T,X).