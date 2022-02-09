// by geee3, February 9, 2022

import UIKit

/*
 Functions
 
 Functions are self-contained chunks of code that perform a specific task. You
 give a function a name that identifies what it does, and this name is used to
 "call" the function to perform its task when needed. Parameters can provide
 default values to simplify function calls and can be passed as in-out parameters,
 which modify a passed variable once the function has completed its execution.
 
 Every function in Swift has a type, consisting of the function's parameter types
 and return type. You can use this type like any other type in Swift, which makes it
 easy to pass functions as parameters to other functions, and to return functions
 from functions. Functions can also be written within other functions to
 encapsulate useful functionality within a nested function scope.
 */

/*
 Defining and Calling Functions
 
 When you define a function, you can optionally define one or more named, typed
 values that the function takes as input, known as parameters. You can also
 optionally define a type of value that the function will pass back as output when
 it's done, known as its return type.
 */

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

/*
 All of information is rolled up into the function's definition, which is prefixed
 with the func keyword. You indicate the function's return type with the return
 arrow -> (a hyphen followed by a right angle bracket), which is followed by the
 name of the type to return.
 
 The difinition describes what the function does, what it expects to receive, and
 what it returns when it's done. The definition makes it easy for the function to be
 called unambiguously from elsewhere in your code:
 */

print(greet(person: "Anna"))
print(greet(person: "Brian"))

/*
 To make the body of this function shorter, you can combine the message
 creation and the return statement into one line:
 */

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))

/*
 Function Parameters and Return Values
 
 Function parameters and return values are extremely flexible in Swift. You can
 define anything from a simple utility function with a single unnamed parameter to
 a complex function with expressive parameter names and different parameter
 options.
 
 Functions aren't required to define input parameters. Here's a function with no
 input parameters, which always returns the same String message whenever it's
 called:
 */

func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())

/*
 Functions can have multiple input parameters, which are written within the
 function's parentheses, separated by commas.
 */

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))

/*
 Functions aren't required to define a return type. Here's a version of the
 greet(person:) function, which prints its own String value rather than
 returning it:
 */

func sayHello(person: String) {
    print("Hello, \(person)!")
}
sayHello(person: "Dave")

/*
 The return value of a function can be ignored when it's called:
 */

func printAndCout(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCout(string: string)
}
printAndCout(string: "hello, world")
printWithoutCounting(string: "hello, world")

/*
 You can use a tuple type as the return type for a function to return multiple
 values as part of one compound return value.
 
 The example below defines a function called minMax(array:), which finds the
 smallest and largest numbers in an array of Int values. To handle an empty
 array safety, write the minMax(array:) function with an optional tuple return
 type and return a value of nil when the array is empty:
 */

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

/*
 Function Argument Labels and Parameter Names
 
 Each function parameter has both an argument label and a parameter name. The
 argument label is used when calling the function; each argument is written in the
 function call with its argument label before it. The parameter name is used in the
 implementation of the function. By default, parameters use their parameter name
 as their argument label.
 */

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(firstParameterName: 1, secondParameterName: 2)

/*
 You write an argument label before the parameter name, separated by a space.
 The use of argument labels can allow a funcion to be called in an expressive,
 sentence-like manner, while still providing a function body that's readable and
 clear in intent.
 */

func greet(person:String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

/*
 If you don't want an argument label for a parameter, write an underscore (_)
 instead of an explicit argument label for that parameter. If a parameter has
 an argument label, the argument must be labeled when you call the function.
 */

func otherFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
otherFunction(1, secondParameterName: 2)

/*
 You can define a default value for any parameter in a function by assigning a
 value to the parameter after that parameter's type. If a default value is defined,
 you can omit that parameter when calling the function.
 */

func anotherFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
anotherFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
anotherFunction(parameterWithoutDefault: 4)

/*
 A variadic parameter accepts zero or more values of a specified type. You use a
 variadic parameter to specify that the parameter can be passed a varying
 number of input values when the funcion is called. Write variadic parameters by
 inserting three period characters (...) after the parameter's type name.
 
 The values passed to a variadic parameter are made available within the
 function's body as an array of the appropriate type. For example, a variadic
 parameter with a name of numbers and type of Double... is made available
 within the function's body as a constant array called numbers of type [Double].
 */

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)

/*
 You write an in-out parameter by placing the inout keyword right before a
 parameter's type. An in-out parameter has a value that's passed in to the
 function, is modified by the function, and is passed back out of the function
 to replace the original value.
 
 You can only pass a variable as the argument for an in-out parameter. You can't
 pass a constant or a literal value as the argument, because constants and literals
 can't be modified. You place an ampersand (&) directly before a variable's name
 when you pass it as an argument to an in-out parameter, to indicate that it can
 be modified by the function.
 */

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

/*
 You can call the swapTwoInts(_:_:) function with two variables of type Int to
 swap their values. Note that the names of someInt and anotherInt are prefixed
 with an ampersand when they're passed to the swapTwoInts(_:_:) function:
 */

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
