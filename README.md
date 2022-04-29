# Dart-Code-Recipes
Dart Code Recipes based on the book Dart for Absolute Beginners(Apress,2014). By David Kopec

#these are my random notes

- Dart interpolation *syntax: {}*
- escape character is the backslash character.
    - Dart switch statements syntaxt:
    switch(argument) {
    case "dog":
    print("some logging")
    }

**Chapter 4: Fundermentals Program to showcase Dart usage**
Shortcircuit evaluation as evident y && if first condition evaluates to false, then second condition will not be evaluated.
syntatic sugar *x*=5* for power in dart
<hr>
<h2><strong>Chapter 5: Functions</strong></h2>

functions as callable units
LOcality of functions
localvariables which are functions. their use only limited to the block of code within which they are defined. Variables also local to conditional blocks.
to make variables global, declare them outside functions
better to declare the global variables at the beginning of the source code.
Function can access 1 or n parameters. Better to associate a variable as closely as possible with the place in the program where it is utilized.
Void function return null. If func declared as a void and a return value specified, an error would yield. All dart functions have a return value, if void then null.
Code execution ends when a return stmt is found by the compiler

*Single Line functions in Dart*
The syntax *=>* is used for separating the *return type*, *name*, and *parameters* of a single-line function from its implementation.  Single line functions do not return a value, rather the return value is implied.

return from a void function immediately moves execution from the line of the return back to the caller of the function.

three slashes in dart used to indicate documentation

__*Optional Parameters for Functions*__

Optional parameters can have a default value.  Optional parameters in dart can be *optional or named*

*Positional Optional Parameters*
Defined with square bracket with function definition. We can also define a default value for positional parameters using the = sign. Use comma to sepearate optional positional parameters. Optional parameters must be supplied in the same order they are defined.

*Named Optional Parameters*
Unlike positional parameters, order of declaration fail to matter.
Named Parameters defined using curly brackets with a colon seperating their name from their default value. Commas seperate them if more than one. Offers more flexibility due to their indifference towards order.

*Functions as First Class Citizens*
1. Functions can be referred to by their name in the program\
2. Functions can be passed as args to other functions
3. A function can be returned as a result(return value) of another function
4. Functions can be included in data structures.

one function can be substituted for another when they have the same signature. A function’s signature is defined by the combination of its parameters’ types and its return type

*Functions within Functions*
Functions can be defined within other functions. They too can be referenced by variables. Illustrated by calling an anonymous function within main.

*Recursive Functions*
A recursive function calls itself. Recursive functions need two things to be effective:
1. A base class: this is a clear end-state that is checked for such as with if(times <0)
2. A recursive case: this ends with a recursive call with a change of state such as addon(original +additional, additional, times=5) call the recursive function with similar parameters that have changed a given value which will determine when condition to end recursion(base class) will be met.

Any scenarion that can be accomplished with recursion can also be accomplished with iteractive loops. Better to use iteractive loops since recursive call of a function requires that new memory be set aside for all its parameters and local variables.



<h2>Summary</h2>
Making the same function call will always result in the same result, if the arguments
provided to the function are exactly the same. Atomicity

<hr>



<strong><h2>Dart Data Structures</h2></strong>
