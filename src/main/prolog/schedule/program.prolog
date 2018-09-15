%base rule
schedule(List) :- days(2, List); days(3, List).

%customize rule

menu_schedule(List) :- schedule(List), length(List, 3), interval_having_days(List).

frequent_day_exists(Menus) :- 
  member(X, Menus), member(Y, Menus),
  \+ X = Y,
  day(Day), member(Day, X), member(Day, Y).

program(PushUp, Abdominal, Squat, Back) :-
  menu_schedule(PushUp),  menu_schedule(Abdominal),  menu_schedule(Squat),  menu_schedule(Back),
  member('Mon.', PushUp), member('Tue.', Abdominal),
  \+ member('Fri.', PushUp), \+ member('Fri.', Abdominal), \+ member('Fri.', Squat), \+ member('Fri.', Back),
  PushUp = Back, Abdominal = Squat,
  \+ frequent_day_exists([PushUp, Abdominal]).