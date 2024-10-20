% Decision tree rules in Prolog

% Rule for a5 = false
predict(c0) :- a5(false).

% Rule for a5 = true
predict(Class) :- 
    a5(true), 
    a8(A8), 
    a9(A9),
    a2(A2),
    a0(A0),
    a1(A1),
    a4(A4),
    decision(A8, A9, A2, A0, A1, A4, Class).

% Decision rules based on conditions from the decision tree
decision(false, false, false, _, _, _, c0).
decision(false, false, true, false, _, false, c1).
decision(false, false, true, false, _, true, c0).
decision(false, false, true, true, _, _, c1).
decision(false, true, _, _, _, _, c1).
decision(true, false, false, false, _, _, c1).
decision(true, false, false, true, _, _, c0).
decision(true, false, true, _, _, false, c1).
decision(true, false, true, _, _, true, c0).
decision(true, true, _, _, _, _, c0).

% Ask user for attribute values
ask_attributes :-
    write('Enter value for a5 (true/false): '), read(A5), assert(a5(A5)),
    write('Enter value for a8 (true/false): '), read(A8), assert(a8(A8)),
    write('Enter value for a9 (true/false): '), read(A9), assert(a9(A9)),
    write('Enter value for a2 (true/false): '), read(A2), assert(a2(A2)),
    write('Enter value for a0 (true/false): '), read(A0), assert(a0(A0)),
    write('Enter value for a1 (true/false): '), read(A1), assert(a1(A1)),
    write('Enter value for a4 (true/false): '), read(A4), assert(a4(A4)).

% Main function to predict the class
start :-
    ask_attributes,
    predict(Class),
    write('The predicted class is: '), write(Class), nl.
