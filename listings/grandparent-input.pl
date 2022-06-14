% background knowledge
p(a, h).    % parent(abraham, homer).
p(h, b).    % parent(homer, bart).
p(h, l).    % parent(homer, lisa).

% positive examples
gp(a, b).   % grand_parent(abraham, bart).
gp(a, l).   % grand_parent(abraham, lisa).

% negative examples
gp(a, h).   % grand_parent(abraham, homer).
gp(h, b).   % grand_parent(homer, bart).
gp(a, a).   % grand_parent(abraham, abraham).

% meta-rules 
P(A, B) :- Q(A, C), R(C, B).

% expected
gp(X, Y) :- p(X, Z), p(Z, Y).