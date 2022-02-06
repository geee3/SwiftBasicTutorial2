// by geee3, February 6, 2022

import UIKit

/*
 Control Flow
 
 Swift provides a variety of control flow statements. These include while loop to
 perform a task multiple times; if, guard, and switch statements to execute
 different branches of code based on certain conditions; and statements such as
 break and continue to transfer the flow of execution to another point in your
 code.
 */

/*
 For-In Loops
 
 You use the for-in loop to iterate over a sequence, such as items in an array,
 ranges of numbers, or characters in a string.
 */

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

/*
 You can also iterate over a dictionary to access its key-value pairs. Each item in
 the dictionary is returned as a (key, value) tuple when the dictionary is
 iterated, and you can decompose the (key, value) tuple's members as explicitly
 named constants for use within the body of the for-in loop. In the code example
 below, the dictionary's keys are decomposed into a constant called animalName,
 and the dictionary's values are decomposed into a constant called legCount.
 */

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

/*
 You can also use for-in loops with numeric ranges. This example prints the first
 few entries in a five-times table:
 */

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

/*
 In the example above, index is a constant whose value is automatically set at the
 start of each iteration of the loop. As such, index doesn't have to be declared
 before it's used. It's implicitly declared simply by its inclusion in the loop
 declaration, without the need fot a let declaration keyword.
 
 If you don't need each value from a sequence, you can ignore the values by using
 an underscore in place of a variable name.
 */

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

/*
 In some situations, you might not want to use closed ranges, which include both
 endpoints. Consider drawing the tick marks for every minute on a watch face. You
 want to draw 60 tick marks, starting with the 0 minute. Use the half-open range
 operator (..<) to include the lower bound but not the upper bound.
 */

let minutes = 60
for _ in 0..<minutes {
    // render the tick mark each minute (60 times)
}

/*
 Some users might want fewer tick marks in their UI. They could prefer one mark
 every 5 minutes instead. Use the stride(from:to:by:) function to skip the
 unwanted marks.
 */

let minuteInterval = 5
for _ in stride(from: 0, to: minutes, by: minuteInterval) {
    // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
}

/*
 Closed ranges are also available, by using stride(from:through:by:) instead:
 */

let hours = 12
let hourInterval = 3
for _ in stride(from: 3, through: hours, by: hourInterval) {
    // render the tick mark every 3 hours (3, 6, 9, 12)
}

/*
 While Loops
 
 A while loop performs a set of statements until a condition becomes false.
 These kinds of loops are best used when the number of iterations isn't known
 before the first iteration begins. Swift provides two kinds of while loops:
 - while evaluates its condition at the start of each pass through the loop.
 - repeat-while evaluates its condition at the end of each pass through the
 loop.
 */
