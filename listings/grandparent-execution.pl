% initialisation
(*@$B$@*) = { p(a, h), p(h, b), p(h, l) }.
(*@$E^+$@*) = { gp(a, b), gp(a, l) }.
(*@$E^-$@*) = { gp(a, h), gp(h, b), gp(a, a) }.
(*@$C$@*) = { P(A, B) :- Q(A, C), R(C, B) }.
(*@$L$@*) = { p(a, h), p(h, b), p(h, l) }.
(*@\framebreak@*)
% step (*@$d$@*) = 1
(*@$H$@*) = {}.
  (*@$e$@*) = gp(a, b).
  (*@$(H, B) \models e$@*) = false.
  (*@$|H| \leq d$@*) = true.
    (*@$m$@*) = P(A, B) :- Q(A, C), R(C, B).    (*@$\theta$@*) = {P/gp, A/a, B/b}.
    (*@$m$@*) = gp(a, b) :- Q(a, C), R(C, b).
      (*@$l$@*) = Q(a, C).
      (*@$p$@*) = p(a, h).    (*@$\sigma$@*) = {Q/p, C/h}.
      (*@$m$@*) = gp(a, b) :- p(a, h), R(h, b).
      (*@$l$@*) = R(h, b).
      (*@$p$@*) = p(h, b).    (*@$\sigma$@*) = {R/p}.
      (*@$m$@*) = gp(a, b) :- p(a, h), p(h, b).
    (*@$\Call{Generalise}{m}$@*) = gp(X, Y) :- p(X, Z), p(Z, Y). % {a/X, b/Y, h/Z}
    (*@$H$@*) = { gp(X, Y) :- p(X, Z), p(Z, Y) }.
  (*@$(\not\exists e \in E^- : (H, B) \models e)$@*) = true. (*@$(\forall e \in E^+ : (H, B) \models e)$@*) = true. 
  % return (*@$H$@*)