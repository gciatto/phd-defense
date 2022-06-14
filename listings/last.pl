% background
head([H | _], H).
tail([_ | T], T).

% positive examples
last([a], a).
last([a, b], b).
last([a, b, c], c).

% negative examples
last([], []).
last([a], []).
last([a, b], a).
last([a, b, c], a).
last([a, b, c], b).

% metarules

P(A, B) :- Q(A, C), R(A, D). % m1
P(A, B) :- Q(A, C), R(C, B). % m2

% expected

last(L, X) :- tail(L, []), head(L, X).
last(L, X) :- tail(L, Y), last(Y, X).
