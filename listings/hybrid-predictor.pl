/* assumption: */
:- (*@\label{line:hybrid-predictor-setup}@*)iris_dataset(D), iris_schema(S), model_selection(D, S, N, T, _), !, assert(iris_nn(N, T)).

/* hybrid iris classifier */ 
iris(SL, SW, PL, PW, Species) :-
   iris_nn(Network, Transformation),
   transform([SL, SW, PL, PW] , Transformation, ActualX), 
   predict(Network, ActualX, Y),
   classify(Y, argmax, [setosa, versicolor, virginica], Species).
