day(X) :- member(X, ['Sun.', 'Mon.', 'Tue.', 'Wed.', 'Thu.', 'Fri.','Sat.']).

next_order_day('Sun.', 'Mon.').
next_order_day('Mon.', 'Tue.').
next_order_day('Tue.', 'Wed.').
next_order_day('Wed.', 'Thu.').
next_order_day('Thu.', 'Fri.').
next_order_day('Fri.', 'Sat.').

next_day(X, Y) :- next_order_day(X, Y).
next_day('Sat.', 'Sun.').

sorted_order_day(X) :- day(X).
sorted_order_day(X, Y) :- day(X), day(Y), next_order_day(X, Y).
sorted_order_day(X, Y) :- next_order_day(X, Z), sorted_order_day(Z, Y).

sorted_days([X]) :- day(X).
sorted_days([Head1|[Head2|Tail]]) :- sorted_order_day(Head1, Head2), sorted_days([Head2|Tail]).

days(N, List) :- sorted_days(List), length(List, N).

in_a_row_days(List) :- select(X, List, Rest1), select(Y, Rest1, _), next_day(X, Y).

interval_having_days(List) :- \+ in_a_row_days(List).