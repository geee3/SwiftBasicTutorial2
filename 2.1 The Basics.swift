// by geee3, January 27, 2021

import UIKit

/*
 The Basics
 
 Swift is a new programming language for iOS, macOS, watchOS, and tvOS app
 development. Nonetheless, many parts of Swift will be familiar from your
 experience of developing in C and Objective-C.
 */

/*
 Constants and Variables
 
 Constant and variables associate a name with a value of a particular type.
 The value of a constant can't be changed once it's set, whereas a variable
 can be set to a different value in the future. Constants and variables
 must be declared before they're used. You declare constants with the let
 keyword and variables with the var keyword. Here's an example of how
 constants and variables can be used to track the number of login attempts
 a user has made:
 */

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

/*
 In this example, the maximum number of allowed login attempts is declared as a
 constant, because the maximum value never changes. The current login attempt
 counter is declared as a variable, because this value must be incremented after
 each failed login attempt.
 
 You can declare multiple constants or multiple variables on a single line,
 separated by commas:
 */

var x = 0.0, y = 0.0, z = 0.0

/*
 You can provide a type annotation when you declare a constant or variable, to
 be clear about the kind of values the constant or variable can store. Write a type
 annotation by placing a colon after the constant or variable name, followed by a
 space, followed by the name of the type to use.
 */

var welcomeMessage: String

/*
 The colon in the declaration means "...of type..." so the code above can be read
 as "Declare a variable called welcomeMessage that's of type String." The phrase
 "of type String" means "can store any String value." Think of it as meaning
 "the type of thing" that can be stored.
 
 The welcomeMessage variable can now be set to any string value without error:
 */

welcomeMessage = "Bonjour!"

/*
 You can define multiple related variables of the same type on a single line,
 separated by commas, with a single type annotation after the final variable
 name:
 */

var red, green, blue: Double

/*
 Constant and variable names can contain almost any character, including
 Unicode characters:
 */

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

/*
 Constant and variable names can't contain whitespace characters,
 mathematical symbols, arrows, private-use Unicode scalar values, or line-and
 box-drawing characters. Nor can they begin with a number, although numbers
 may be included elsewhere within the name.
 
 Once you've declared a constant or variable of a certain type, you can't declare
 it again with the same name, or change it to store values of a different type. Nor
 can you change a constant into a variable or variable into a constant.
 */

/*
 You can print the current value of a constant or varibale with the
 print(_:separator:terminator:) function:
 */

print(welcomeMessage)

/*
 The print(_:separator:terminator:) function is a global function that prints
 one or more values to an appropriate output. In Xcode, for example, the
 print(_:separator:terminator:) function prints its output in Xcode's
 "console" pane. The separator and terminator parameter have default values,
 so you can omit them when you call this function. By default, the function
 terminates the line it prints by adding a line break. To print a value without a line
 break after it, pass an empty string as the terminator-for example,
 print(someValue, terminator: "").
 
 Swift uses string interpolation to include the name of a constant or variable as a
 placeholder in a longer string, and to prompt Swith to replace it with the current
 value of that constant or variable. Wrap the name in parentheses and excape it
 with a backslash before the opening parenthesis:
 */

print("The current value of welcomeMessage is \(welcomeMessage)")

/*
 Comments
 
 Use comments to include nonexecutable text in your code, as a note or reminder
 to yourself. Comments are ignored by the Swift compiler when your code is
 compiled.
 
 - Single-line comments begin with two forward-slashes (//)
 - Multiline comments start with a forward-slash followed by an asterisk (/*)
 end with an asterisk followed by a forward-slash (*/)
 - Unlike multiline comments in C, multiline comments in Swift can be nested
 inside other multiline comments.
 */

/*
 Semicolons
 
 Unlike many other languages, Swift doesn't require you to write a semicolon (;)
 after each statement in your code, although you can do so if you wish. However,
 semicolons are required if you want to write multiple separate statements on a
 single line:
 */

let cat = "🐱"; print(cat)

/*
 Integers
 
 Swift provides signed and unsigned integers in 8, 16, 32, and 64 bit forms.
 These integers follow a naming convention similar to C, in that an 8-bit unsigned
 integer is of type UInt8, and a 32-bit signed integer is of type Int32. Like all
 types in Swift, these integer types have capitalized names.
 
 you can access the minimum and maximum values of each integer type with its
 min and max properties:
 */

let minValue = UInt8.min
let maxValue = UInt8.max

/*
 In most cases, you don't need to pick a specific size of integer to use in your
 code. Swift provides an additional integer type, Int, which has the same size as
 the current platform's native word size.
 
 Swift also provides an unsigned integer type, UInt, which has the same size as
 the current platform's native word size.
 */

/*
 Floating-Point Numbers
 
 Floating-point numbers are numbers with a fractional component, such as
 3.14159, 0.1, and -273.15.
 
 Floating-point types can represent a much wider range of values than integer
 types, and can store numbers that are much larger or smaller than can be stored
 in an Int. Swift provides two signed floating-point number types:
 - Double represents a 64-bit floating-point number.
 - Float represents a 32-bit floating-point number.
 */

/*
 Type Safety and Type Inference
 
 Swift is a type-safe language. A type safe language encourages you to be clear
 about the types of values your code can work with. If part of your code requires
 a String, you can't pass it an Int by mistake. Because Swift is type safe, it
 performs type checks when compiling your code and flags any mismatched types as
 errors. This enables you to catch and fix errors as early as possible in the
 development process.
 */

/*
 Numeric Type Conversion
 
 To convert one specific number type to another, you initialize a new number of
 the desired type with the existing value. In the example below, the constant
 twoThousand is of type UInt16, whereas the constant one is of type UInt8.
 They can't be added together directly, because they're not of the same type.
 Instead, this example calls UInt16(one) to create a new UInt16 initialized with
 the value of one, and uses this value in place of the original:
 */

let twoThousand: UInt16 = 2000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

/*
 SomeType(ofInitialValue) is the default way to call the initializer of a Swift
 type and pass in an initial value.
 */

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi)

/*
 Here, the value of the constant three is used to create a new value of type
 Double, so that both sides of the addition are of the same type. Without this
 conversion in place, the addition would not be allowed.
 
 An integer type can be initialized with a Double or Float value. Floating-point
 values are always truncated when used to initialize a new integer value in this
 way. This means 4.75 becomes 4, and -3.9 becomes -3.
 */

/*
 Booleans
 
 Swift has a basic Boolean type, called Bool. Boolean values are referred to as
 logical, because they can only ever be true or false. Swift provides two Boolean
 constant values, true and false:
 */

let orangesAreOrange = true
let turnipsAreDelicious = false

/*
 The types of orangesAreOrange and turnipsAreDelicious have been
 inferred as Bool from the fact that they were initialized with Boolean literal
 values. As with Int and Double above, you don't need to declare constants or
 variables as Bool if you set them to true or false as soon as you create them.
 
 Boolean values are particularly useful when you work with conditional
 statements such as the if statement:
 */

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

/*
 Tuples
 
 Tuples group multiple values into a single compound value. The values within a
 tuple can be of any type and don't have to be of the same type as each other.
 */

let http404Error = (404, "Not Found")

/*
 The (404, "Not Found") tuple groups together an Int and a String to give
 the HTTP status code two separate values: a number and a human-readable
 description. It can be described as "a tuple of type (Int, String)".
 
 You can decompose a tuple's contents into separate constants or variables,
 which you then access as usual:
 */

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

/*
 If you only need some of the tuple's values, ignore parts of the tuple with an
 underscore (_) when you decompose the tuple:
 */

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

/*
 Alternatively, access the individual element values in a tuple using index
 numbers starting at zero:
 */

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

/*
 You can name the individual elements in a tuple when the tuple is defined. If
 you name the elements in a tuple, you can use the element names to access the
 values of those elements:
 */

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

/*
 Tuples are particularly useful as the return values of functions. A function that
 tries to retrieve a web page might return the (Int, String) tuple type to
 describe the success or failure of the page retrieval. By returning a tuple with
 two distinct values, each of a different type, the function provides more useful
 information about its outcome than if it could only return a single value of a
 single type.
 */

/*
 Optionals
 
 You use optionals in situations where a value may be absent. An optional
 represents two possibilities: Either there is a value, and you can unwrap the
 optional to access that value, or there isn't a value at all.
 */

/*
 nil
 
 You set an optional variable to a valueless state by assigning it the special value
 nil. If you define an optional variable without providing a default value, the
 variable is automatically set to nil for you:
 */

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?

/*
 Forced Unwrapping
 
 Once you're sure that the optional does contain a value, you can access its
 underlying value by adding an exclamation point (!) to the end of the optional's
 name. The exclamation point effectively says, "I know that this optional definitely
 has a value; please use it."
 */

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
if convertedNumber != nil {
    print("The string \"\(possibleNumber)\" has an integer value of \(convertedNumber!).")
}

/*
 Optional Binding
 
 You use optional binding to find out whether an optional contains a value, and if
 so, to make that value available as a temporary constant or variable. Optional
 binding can be used with if and while statements to check for a value inside an
 optional, and to extract that value into a constant or variable, as part of a single
 action.
 */

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}

/*
 Error Handling
 
 You use error handling to respond to error conditions your program may
 encounter during execution. In contrast to optionals, which can use the
 presence or absence of a value to communicate success or failure of a function,
 error handling allows you to determine the underlying cause of failure, and,
 if necessary, propagate the error to another part of your program.
 
 When a function encounters an error condition, it throws an error. The function's
 caller can then catch the error and respond appropriately.
 */

func canThrowAnError() throws {
    // this function may or may not throw an error
}

/*
 A function indicates that it can throw an error by including the throws keyword in
 its declaration. When you call a function that can throw an error, you prepend the
 try keyword to the expression.
 
 Swift automatically propagates errors out of their current scope until they're
 handled by a catch clause.
 */

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

/*
 A do statement creates a new containing scope, which allows errors to be
 propagated to one or more catch clauses.
 */

/*
 Assertions and Preconditions
 
 Assertions and preconditions are checks that happen at runtime. You use them to
 make sure an essential condition is satisfied before executing any further code. If
 the Boolean condition in the assertion or precondition evaluates to true, code
 execution continues as usual. If the condition evaluates to false, the current
 state of the program is invalid; code execution ends, and your app is terminated.
 You use assertions and preconditions to express the assumptions you make and
 the expectations you have while coding, so you can include them as part of your
 code. Assertions help you find mistakes and incorrect assumptions during
 development, and preconditions help you detect issues in production.
 
 You write an assertion by calling the assert(_:_:file:line:) function from the
 Swift standard library. You pass this function an expression that evaluates to true
 or false and a message to display if the result of the condition is false. For
 example:
 */

let age = 3
assert(age >= 0, "A person's age can't be less than zero.")

/*
 If the code already checks the condition, you use the
 assertionFailure(_:file:line:) function to indicate that an assertion has
 failed. For example:
 */

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

/*
 Enforcing Preconditions
 
 Use a precondition whenever a condition has the potential to be false, but must
 definitely be true for your code to continue execution. For example, use a
 precondition to check that a subscript isn't out of bounds. or to check that a
 function has been passed a valid value. You write a precondition by calling the
 precondition(_:_:file:line:) function. You pass this function an expression
 that evaluates to true or false and a message to display if the result of the
 condition is a false. For example:
 */

precondition(age >= 0, "A person's age can't be less than zero.")

/*
 You can also call the preconditionFailure(_:file:line:) function to indicate
 that a failure has occurred-for example, if the default case of a switch was taken,
 but all valid input data should have been handled by one of the switch's other
 cases.
 */
