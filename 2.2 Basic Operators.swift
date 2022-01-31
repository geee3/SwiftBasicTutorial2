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
