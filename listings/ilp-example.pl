% background knowledge
parent(abraham, homer).
parent(homer, bart).
parent(homer, lisa).

% positive examples
grand_parent(abraham, bart).
grand_parent(abraham, lisa).

% negative examples
grand_parent(abraham, homer).
grand_parent(homer, bart).
grand_parent(abraham, abraham).