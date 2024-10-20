# Pragyan_Prolog

The start Predicate
This is the entry point of the program. When you call start., it will begin prompting the user for values of the attributes and then use these inputs to predict the class.
Explanation:
write('Enter value for a5 (true/false): '): This prompts the user for the value of the attribute a5. The user input is expected to be true or false.
read(A5): This reads the user input and assigns it to the variable A5.
The same process is repeated for other attributes a8, a9, a2, a0, a4, and a1.
After all the inputs are gathered, the program calls the predict/8 predicate with the values of all attributes and retrieves the predicted class (c0 or c1).
The result is printed using format, which outputs the predicted class in a readable format.
The predict Predicate
This is the main logic of the expert system. It uses the decision tree provided to make a prediction based on the values of the attributes.
Explanation:
Each predict/8 rule corresponds to a path in the decision tree. It takes the values of attributes a5, a8, a9, a2, a0, a4, and a1, and matches them against the rules in the decision tree to return a class (c0 or c1).
Example Breakdown:
predict(false, _, _, _, _, _, _, c0).
This rule says if a5 = false, the class is c0. The underscores (_) represent variables that are not relevant in this case. According to the decision tree, as long as a5 = false, the class is always c0, regardless of the other attribute values.
predict(true, false, false, false, _, _, _, c0).
This rule matches when:
a5 = true
a8 = false
a9 = false
a2 = false
The rest of the attributes are not relevant.
The class is predicted to be c0 under these conditions.
predict(true, false, false, true, false, false, _, c1).
This rule matches when:
a5 = true
a8 = false
a9 = false
a2 = true
a0 = false
a4 = false
The class is predicted to be c1.
The other rules follow the same structure, matching the attribute values to the decision tree paths and returning either c0 or c1.
Decision Tree
The decision tree provided in the question is directly translated into Prolog rules. Each path in the tree becomes a rule in the predict/8 predicate. The tree has multiple branches based on the values of attributes like a5, a8, a9, and others, and the rules reflect these branching conditions.
For example, the decision tree starts with a5 = false: c0. This is directly translated to:
predict(false, _, _, _, _, _, _, c0).
Similarly, a5 = true leads to further branching with conditions on a8, a9, and so on. These branches are encoded in the subsequent predict/8 rules.
User Interaction
The program prompts the user to enter values for all attributes, and once all inputs are received, it uses the decision tree logic (the predict/8 rules) to determine the class. The predicted class (c0 or c1) is then printed.
Flow of Execution
The start predicate begins by asking the user for input values for all attributes (a5, a8, a9, a2, etc.).
The user enters true or false for each attribute.
The predict predicate matches the user input against the rules encoded from the decision tree.
The corresponding class (c0 or c1) is predicted and displayed.
