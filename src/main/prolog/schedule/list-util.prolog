all_match(_,[]).
all_match(Predicate, [Head|Tail]) :- call(Predicate, Head), all_match(Predicate, Tail).

duplicate(List) :- select(Some, List, Rest), member(Some, Rest).

unique(List) :- \+ duplicate(List).
