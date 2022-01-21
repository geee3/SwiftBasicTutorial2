// by geee3, January 21, 2021

import UIKit

/*
 A Swift Tour
 
 Tradition suggests that the first program in a new language should print the
 words "Hello, world!" on the screen. In Swift, this can be done in a single line:
 */

print("Hello world!")

/*
 You don't need to import a seperate library for functionality like input/output
 or string handling. Code written at global scope is used as the entry point for
 the program, so you don't need a main() function. You also don't need to write
 semicolons at the end of every statement.
 */

/*
 Simple Values
 
 Use let to make a constant and var to make a variable. The value of a constant
 doesn't need to be known at compile time, but you must assign it a value exactly
 once. This means you can use constants to name a value that you determine
 once but use in many places.
 */

var myVarable = 42
myVarable = 50
let myConstant = 42

/*
 A constant or variable must have the same type as the value you want to assign
 to it. However, you don't always have to write the type explicitly. Providing a value
 when you create a constant or variable lets the compiler infer its type. In the
 example above, the compiler infers that myVariable is an integer because its
 initial value is an integer.
 
 If the initial value doesn't provide enough information (or if isn't an initial value),
 specify the type by writing after the variable, separated by a colon.
 */

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

/*
 Values are never implicitly converted to another type. If you need to convert a
 value to a different type, explicitly make an instance of the desired type.
 */

let label = "The width is"
let width = 94
let widthLabel = label + String(width)

/*
 There's an even simpler way to include values in strings: Write the value in
 parentheses, and write a backslash (\) before the parentheses. For example:
 */

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

/*
 Use three double quotation marks (""") for strings that take up multiple lines.
 Indentation at the start of each quoted line is removed, as long as it matches the
 indentation of the closing quotation marks. For example:
 */

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

/*
 Create arrays and dictionaries using brackets ([]), and access their elements by
 writing the index or key in brackets. A comma is allowed after the last element.
 */

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"
shoppingList.append("blue paint")
print(shoppingList)

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print(occupations)

/*
 To create an empty array or dictionary, use the initializer syntax.
 */

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

/*
 If type information can be inferred, you can write an empty array as [] and an
 empty dictionary as [:]-for example, when you set a new value for a variable or
 pass an argument to a function.
 */

/*
 Control Flow
 
 Use if and switch to make conditionals, and use for-in, while, and repeat-
 while to make loops. Parentheses around the condition or look variable are
 optional. Braces around the body are required.
 */

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

/*
 In an if statement, the conditional must be a Boolean expression-this means
 that code such as if score { ... } is an error, not an implicit comparison to
 zero.
 
 You can use if and let together to work with values that might be missing.
 These values are represented as optionals. An optional value either contains a
 value or contains nil to indicate that a value is missing. Write a question mark (?)
 after the type of a value to mark the value as optional.
 */

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

/*
 If the optional value is nil, the conditional is false and the code in braces is
 skipped. Otherwise, the optional value is unwrapped and assigned to the
 constant after let, which makes the unwrapped value available inside the block
 of code.
 
 Another way to handle optional values is to provide a default value using the ??
 operator. If the optional value is missing, the default value is used instead.
 */

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

/*
 Switches support any kind of data and a wide variety of comparison operations-
 they aren't limited to integers and tests for equality.
 */

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

/*
 Notice how let can be used in a pattern to assign the value that matched the
 pattern to a constant.
 
 After executing the code inside the switch case that matched, the program exits
 from the switch statement. Execution doesn't continue to the next case, so you
 don't need to explicitly break out of the switch at the end of each case's code.
 
 You use for-in to iterate over items in a dictionary by providing a pair of names
 to use for each key-value pair. Dictionaries are an unordered collection, so their
 keys and values are iterated over in an arbitary order.
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

/*
 Use while to repeat a block of code until a condition changes. The condition of a
 loop can be at the end instead, ensuring that the loop is run at least once.
 
 You can keep an index in a loop by using ..< to make a range of indexes.
 */

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)

/*
 Functions and Closures
 
 Use func to declare a function. Call a function by following its name with a list of
 arguments in parentheses. Use -> to separate the parameter names and types
 from the function's return type.
 
 By default, functions use their parameter names as labels for their arguments.
 Write a custom argument label before the parameter name, or write _ to use no
 argument label.
 */

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("Bob", on: "Tuesday")

/*
 Use a tuple to make a compound value-for example, to return multiple values
 from a function. The elements of a tuple can be referred to either by name or by
 number.
 */

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.1)

/*
 Functions can be nested. Nested functions have access to variables that were
 declared in the outer function. You can use nested functions to organize the
 code in a function that's long or complex.
 */

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

/*
 Functions are a first-class type. This means that a function can return another
 function as its value.
 */

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

/*
 A function can take another function as one of its arguments.
 */

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

/*
 Functions are actually a special case of closures: blocks of code that can be
 called later. The code in a closure has access to things like variables and
 functions that were available in the scope where the closure was created, even if
 the closure is in a different scope when it's executed-you saw an example of
 this already with nested functions. You can write a closure without a name by
 surrounding code with braces ({}). Use in to separate the arguments and return
 type from the body.
 */

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

/*
 You have several options for writing closures more concisely. When a closure's
 type is already known, such as the callback for a delegate, you can omit the type
 of its parameters, its return type, or both. Single statement closures implicitly
 return the value of their only statement.
 */

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

/*
 You can refer to parameters by number instead of by name-this approach is
 especially useful in very short closures. A closure passed as the last argument to
 a function can appear immediately after the parentheses. When a closure is the
 only argument to a function, you can omit the parentheses entirely.
 */

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
