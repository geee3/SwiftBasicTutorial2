// by geee3, January 31, 2021

import UIKit

/*
 Basic Operators
 
 Swift supports the operators you may already know from languages like C, and
 improves several capabilities to eliminate common coding errors. The
 assignment operator (=) doesn't return a value, to prevent it from being
 mistakenly used when the equal to operator (==) is intended. Arithmetic
 operators (+, -, *, /, % and so fourth) detect and disallow value overflow, to avoid
 unexpected results when working with numbers that become larger or smaller
 than the allowed value range of the type that stores them. Swift also provides
 range operators that aren't found in C, such as a..<b and a...b, as a shortcut
 for expressing a range of values.
 */

/*
 Terminology
 
 Operators are unary, binary, or ternary:
 - Unary operators operate on a single target (such as -a). Unary prefix
 operators appear immediately before their target (such as !b), and unary
 postfix operators appear immediately after their target (such as c!).
 - Binary operators operate on two targets (such as 2 + 3) and are infix
 because they appear in between their two targets.
 - Ternary operators operate on three targets. Like C, Swift has only one
 ternary operator, the ternary conditional operator (a ? b : c).
 */

/*
 Assignment Operator
 
 assignment operator (a = b) initializes or updates the value of a with the
 value of b. Unlike the assignment operator in C and Objective-C, the assignment
 operator in Swift doesn't itself return a value.
 */

let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

/*
 Arithmetic Operators
 
 Swift supports the four standard arithmetic operators for all number types:
 - Addition (+)
 - Subtraction (-)
 - Multiplication (*)
 - Division (/)
 */

/*
 The remainder operator (a % b) works out how many multiples of b will fit inside
 a and returns the value that's left over (known as the remainder).
 
 The sign of a numeric value can be toggled using a prefixed -, known as the
 unary minus operator. The unary plus operator (+) simply returns the value it
 operates on, without any change.
 */

let three = 3
let minusThree = -three
let plusThree = -minusThree

let minusSix = -6
let alsoMinusSix = +minusSix

/*
 Compound Assignment Operators
 
 Like C, Swift provides compound assignment operators that combine
 assignment (=) with another operation. Effectively, the addition and the
 assignment are combined into one operator that performs both tasks at the
 same time.
 */

var c = 1
c += 2

/*
 Comparison Operators
 
 Swift supports the following comparison operators:
 Equal to (a == b)
 Not equal to (a != b)
 Greater than (a > b)
 Less than (a < b)
 Greater than or equal to (a >= b)
 Less than or equal to (a <= b)
 
 You can compare two tuples if they have same type and the same number of
 values. Tuples are compared from left to right, one value at a time, until the
 comparison finds two values that aren't equal. Those two values are compared,
 and the result of that comparison determines the overall result of the tuple
 comparison. If all the elements are equal, then the tuples themselves are equal.
 For example:
 */

(1, "zebra") < (2, "apple")
// true because 1 is less than 2, "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")
// true because 3 is equal to 3, and "apple" is less than bird
(4, "dog") == (4, "dog")
// true because 4 is equal to 4, and "dog" is equal to "dog"

/*
 Ternary Conditional Operator
 
 The ternary conditional operator is a special operator with three parts, which
 takes the from question ? answer1 : answer2. It's a shortcut for evaluating
 one of two expressions based on whether question is true or false. If question
 is true, it evaluates answer1 and returns its value; otherwise, it evaluates
 answer2 and returns its value.
 
 Here's an example, which calculates the height for a table row. The row height
 should be 50 points taller than the content height if the row has a header, and 20
 points taller if the row doesn't have a header:
 */

let contentHeight = 40
let hasHeader = true

var rowHeight = contentHeight + (hasHeader ? 50 : 20)

/*
 The example above is shorthand for the code below:
 */

if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}

/*
 Nil-Coalescing Operator
 
 The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value,
 or returns a default value b if a is nil. The expression a is always of an optional
 type. The expression b must match the type that's stored inside a. The example
 below uses the nil-coalescing operator to choose between a default color name and
 an optional user-defined color name:
 */

let defaultColorName = "red"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName

/*
 The userDefinedColorName variable is defined as an optional String, with a
 default value of nil. Beacuse userDefinedColorName is of an optional type, you
 can use the nil-coalescing operator to consider its value. In the example above,
 the operator is used to determine an initial value for a String variable called
 colorNameToUse. Because userDefinedColorName is nil, the expression
 userDefinedColorName ?? defaultColorName returns the value of "red"
 */

/*
 Range Operators
 
 The closed range operator (a...b) defines a range that runs from a to be, and
 includes the values a and b. The value of a must not be greater than b. The
 closed range operator is useful when iterating over a range in which you want all
 of the values to be used, such as with a for-in loop:
 */

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

/*
 The half-open range operator (a..<b) defines a range that runs from a to b, but
 doesn't include b. It's said to be half-open because it contains its first value, but
 not its final value. As the closed range operator, the value of a must not be
 greater than b. If the value of a is equal to b, then the resulting range will be
 empty.
 */

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

/*
 The closed range operator has an alternative from for ranges that continue as far
 as possible in one direction-for example, a range that includes all the elements
 of an array from index 2 to the end of the array. In these cases, you can omit the
 value from one side of the range operator. This kind of range is called a one-sided
 range because the operator has a value on only one side. For example:
 */

for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

/*
 The half-open range operator also has a one-sided from that's written with only
 its final value. Just like when you include a value on both sides, the final value isn't
 part of the range. For example:
 */

for name in names[..<2] {
    print(name)
}

/*
 Logical Operators
 
 Logical operators modify or combine the Boolean logic values true and false.
 Swift supports the three standard logical operators found in C-based languages:
 - Logical NOT (!a)
 - Logical AND (a && b)
 - Logical OR (a || b)
 */

/*
 The logical NOT operator (!a) inverts a Boolean value so that true becomes
 false, and false becomes true.
 */

let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

/*
 The logical AND operator (a && b) creates logical expressions where both values
 must be true for the overall expression to also be true.
 
 If either value is false, the overall expression will also be false. In fact, if the
 first value is false, the second value won't even be evaluated, because it can't
 possibly make the overall expression equate to true. This is known as short-
 circuit evaluation.
 */

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

/*
 The logical OR operator (a || b) is an infix operator made from two adjacent
 pipe characters. You use it to create logical expressions in which only one of the
 two values has to be true for the overall expression to be true.
 
 Like the Logical AND operator above, the Logical OR operator uses short-circuit
 evaluation to consider its expressions. If the left side of a Logical OR expression
 is true, the right side isn't evaluated, because it can't change the outcome of the
 overall expression.
 */

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

/*
 You can combine multiple logical operators to create longer compound
 expressions. And it's sometimes useful to include parentheses when they're not
 strictly needed, to make the intention of a complex expression easier to read.
 */

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
