%base rule
schedule(List) :- days(2, List); days(3, List).

%customize rule

menu_schedule(List) :- schedule(List), length(List, 3), interval_having_days(List).

program(PushUp, Abdominal, Squat, Back) :-
  menu_schedule(PushUp),  menu_schedule(Abdominal),  menu_schedule(Squat),  menu_schedule(Back),
  member('Mon.', PushUp), member('Tue.', Abdominal), member('Wed.', Squat), member('Thu.', Back),
  \+ member('Fri.', PushUp), \+ member('Fri.', Abdominal), \+ member('Fri.', Squat), \+ member('Fri.', Back).