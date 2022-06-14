% parametric theory
(*@$p$@*)::heads(T); (*@$q$@*)::tails(T) :- toss(T).
%          ^ disjunction

% background knowledge
toss(z).
toss(s(N)) :- toss(N).

% positive examples         % negative examples
heads(z).                   tails(z).               % toss 0
tails(s(z)).                heads(s(z)).            % toss 1
heads(s(s(z))).             tails(s(s(z))).         % toss 2
heads(s(s(s(z)))).          tails(s(s(s(z)))).      % toss 3