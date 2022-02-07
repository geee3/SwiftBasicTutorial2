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

/*
 Conditional Statements
 
 Swift provides two ways to add conditional branches to your code: the if
 statement and the switch statement. Typically, you use the if statement to
 evaluate simple conditions with only a few possible outcomes. The switch
 statement is better suited to more complex conditions with multiple possible
 permutations and is useful in situations where pattern matching can help select
 an appropriate code branch to execute.
 */

/*
 In its simplest form, the if statement has a single if condition. It executes a set
 of statements only if that condition is true.
 */

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}

/*
 The if statement can provide an alternative set of statements, known as an else
 clause, for situations when the if condition is false. These statements are
 indicated by the else keyword.
 */

temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

/*
 The final else clause is optional, however, and can be excluded if the set of
 conditions doesn't need to be conplete.
 */

temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
}

/*
 A switch statement considers a value and compares it against several possible
 matching patterns. It then executes an appropriate block of code, based on the
 first pattern that matches successfully. A switch statement provides an
 alternative to the if statement for responding to multiple potential states.
 Every switch statement consists of multiple possible cases, each of which
 begins with the case keyword.
 
 Like toe body of an if statement, each case is separate branch of code
 execution. The switch statement determines which branch should be selected.
 This procedure is known as switching on the value that's being considered.
 
 Every switch statement must be exhaustive. That is, every possible value of the
 type being considered must be matched by one of the switch cases. If it's not
 appropriate to provide a case for every possible value, you can define a default
 case to cover any values that aren't addressed explicitly. This default case is
 indicated by the default keyword, and must always appear last.
 */

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

/*
 Unlike a switch statement in C, switch statement doesn't match both "a" and
 "A". To make a switch with a single case that matches both "a" and "A",
 combine the two values into a compound case, separating the values with commas.
 */

let otherCharacter: Character = "a"
switch otherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

/*
 Values in switch cases can be checked for their inclusion in an interval. This
 example uses number intervals to provide a natural-language count for numbers
 of any size:
 */

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

/*
 Tuples
 
 You can use tuples to test multiple values in the same switch statement. Each
 element of the tuple can be tested against a different value or interval of values.
 Alternatively, use the underscore character (_), also known as the wildcard
 pattern, to match any possible value. The example below takes an (x, y) point,
 expressed as a simple tuple of type (Int, Int).
 */

let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

/*
 Value Bindings
 
 A switch case can name the value or values it matches to temporary constants
 or variables, for use in the body of the case. This behavior is known as value
 binding, because the values are bound to temporary constants or variables within
 the case's body.
 */

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y)")
}

/*
 Where
 
 A switch case can use a where clause to check for additional conditions.
 */

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

/*
 Compound Cases
 
 Multiple switch cases that share the same body can be combined by writing
 several patterns after case, with a comma between each of the patterns. If any
 of the pattern match, then the case is considered to match. The patterns can be
 written over multiple lines if the list is long. For example:
 */

let anotherCharacter: Character = "e"
switch anotherCharacter {
case "a", "e", "i", "o", "u":
    print("\(anotherCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(anotherCharacter) is a consonant")
default:
    print("\(anotherCharacter) isn't a vowel or a consonant")
}

/*
 Control Transfer Statements
 
 Control transfer statements change the order in which your code is executed, by
 transferring control from one piece of code to another. Swift has five control
 transfer statements:
 - continue
 - break
 - fallthrough
 - return
 - throw
 */

/*
 The continue statement tells a loop to stop what it's doing and start again at
 the beginning of the next iteration through the loop. It says "I am done with the
 current loop iteration" without leaving the loop altogether.
 
 The following example removes all vowels and spaces from a lowercase string to
 create a cryptic puzzle phrase:
 */

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)

/*
 The break statement ends execution of an entire control flow statement
 immediately. The break statement can be used inside a switch or loop
 statement when you want to terminate the excution of the switch or loop
 statement earlier than would otherwise be the case.
 
 When used inside a loop statement, break ends the loop's execution
 immediately and transfers control to the code after the loop's closing brace (}).
 No futher code from the current iteration of the loop is executed, and no futher
 iterations of the loop are started.
 
 When used inside a switch statement, break causes the switch statement to
 end its execution immediately and to transfer control to the code after the
 switch statement's closing brace (}). This behavior can be used to match and
 ignore one or more cases in a switch statement. Because Swift's switch statement
 is exhaustive and doesn't allow empty cases, it's sometimes necessary to
 deliberately match and ignore a case in order to make your intentions explicit.
 You do this by writing the break statement as the entire body of the case you
 want to ignore.
 */

let numberSymbol: Character = "三"
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value couldn't be found for \(numberSymbol).")
}

/*
 In Swift, switch statements don't fall through the bottom of each case and into
 the next one. That is, the entire switch statement completes its execution as
 soon as the first matching case is completed. By contrast, C requires you to
 insert an explicit break statement at the end of every switch case to prevent
 fallthrough. Avoiding default fallthrough means that Swift switch statements are
 much more concise and predictable than their counterparts in C, and thus they
 avoid executing multiple switch cases by mistake.
 
 If you need C-style fallthrough behavior, you can opt in to this behavior on a
 case-by-case basis with the fallthrough keyword. The example below uses
 fallthrough to create a textual description of a number.
 */

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

/*
 In Swift, you can nest loops and conditional statements inside other loops and
 conditional statements to create complex control flow structures. However,
 loops and conditional statements can both use the break statement to end their
 execution prematurely. Therefore, it's sometimes useful to be explicit about
 which loop or conditional statement you want a break statement to terminate.
 Similarly, if you have multiple nested loops, it can be useful to be explicit
 about which loop the continue statement should affect.
 
 To achieve these aims, you can mark a loop statement or conditional statement
 with a statement label. A labeled statement is indicated by placing a label on
 the same line as the statement's introducer keyword, followed by a colon.
 */

/*
 Early Exit
 
 A guard statement, like an if statement, executes statements depending on the
 Boolean value of an expression. You use a guard statement to require that a
 condition must be true in order for the code after the guard statement to be
 executed. Unlike an if statement, a guard statement always has an else clause
 -the code inside the else clause is executed if the condition isn't true.
 */

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
greet(person: ["name": "Jane", "location": "Cupertino"])

/*
 Using a guard statement for requirements improves the readability of your code,
 compared to doing the same check with an if statement. It lets you write the
 code that's typically executed without wrapping it in an else block, and it lets
 you keep the code that handles a violated requirement next to the requirement.
 */

/*
 Checking API Availability
 
 Swift has built-in support for checking API availability, which ensures that you
 don't accidentally use APIs that are unavailable on a given deployment target.
 You use an availability condition in an if or guard statement to conditionally
 execute a block of code, depending on whether the APIs you want to use are
 available at runtime. The compiler uses the information from the availability
 condition when it verifies that the APIs in that block of code are available.
 */

if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}
