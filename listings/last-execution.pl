% initialisation
(*@$B$@*) = { head([H|_], H), tail([_|T], T) }.
(*@$E^+$@*) = { last([1], 1), last([1,2], 2), last([1,2,3], 3) }.
(*@$E^-$@*) = { last([1,2], 1), last([1,2,3], 1) }.
(*@$C$@*) = { P(A, B) :- Q(A, C), R(A, B); P(A, B) :- Q(A, D), P(D, B) }.
(*@$L$@*) = { head([H|_], H), tail([_|T], T) }.
(*@\framebreak@*)
% step (*@$d$@*) = 1
(*@$H$@*) = {}.
  (*@$e$@*) = last([1], 1).
  (*@$(H, B) \models e$@*) = false.
  (*@$|H| \leq d$@*) = true.
    (*@$m$@*) = P(A, B) :- Q(A, C), R(A, B).    (*@$\theta$@*) = {P/last, A/[1], B/1}.
    (*@$m$@*) = last([1], 1) :- Q([1], C), R([1], 1).
      (*@$l$@*) = Q([1], C).
      (*@$p$@*) = tail([_|T], T).    (*@$\sigma$@*) = {Q/tail, C/T, T/[]}.
      (*@$m$@*) = last([1], 1) :- tail([1], []), R([1], 1).
      (*@$l$@*) = R([1], 1).
      (*@$p$@*) = head([H|_], H).    (*@$\sigma$@*) = {R/head, H/1}.
      (*@$m$@*) = last([1], 1) :- tail([1], []), head([1], 1).
    (*@$\Call{Generalise}{m}$@*) = last(L, X) :- tail(L, []), head(L, X). 
        % where { [1]/L, 1/X }
    (*@$H$@*) = { last(L, X) :- tail(L, []), head(L, X) }.
  (*@$(\not\exists e \in E^- : (H, B) \models e)$@*) = true. (*@$(\forall e \in E^+ : (H, B) \models e)$@*) = false. 
(*@\framebreak@*)
% step (*@$d$@*) = 2
  % same steps as above
  (*@$H$@*) = { last(L, X) :- tail(L, []), head(L, X) }.
  (*@$e$@*) = last([1,2], 2).
  (*@$(H, B) \models e$@*) = false.
  (*@$|H| \leq d$@*) = true.
    (*@$m$@*) = P(A, B) :- Q(A, D), P(D, B).    (*@$\theta$@*) = {P/last, A/[1], B/1}.
    (*@$m$@*) = last([1,2], 2) :- Q([1,2], D), last(D, 2).
      (*@$l$@*) = Q([1,2], D).
      (*@$p$@*) = tail([_|T], T).    (*@$\sigma$@*) = {Q/tail, D/T, T/[2]}.
      (*@$m$@*) = last([1,2], 2) :- tail([1,2], [2]), last([2], 2).
      (*@$l$@*) = last([2], 2). 
      % (*@$l$@*) has no meta-variable and it is ground
    (*@$\Call{Generalise}{m}$@*) = last(X, Y) :- tail(X, Z), last(Z, Y). 
        % where { [1,2]/X, [2]/Z, 2/Y }
    (*@$H$@*) = { last(L, X) :- tail(L, []), head(L, X); last(X, Y) :- tail(X, Z), last(Z, Y) }.
  (*@$(\not\exists e \in E^- : (H, B) \models e)$@*) = true. (*@$(\forall e \in E^+ : (H, B) \models e)$@*) = true. 
  % return (*@$H$@*)