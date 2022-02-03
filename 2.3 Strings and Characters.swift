// by geee3, February 3, 2021

import UIKit

/*
 Strings and Characters
 
 Swift's String and Character types provide a fast, Unicode-compliant way to
 work with text in your code. The syntax for string creation and manipulation is
 lightweight and readable, with a string literal syntax that's similar to C. String
 concatenation is as simple as combining two strings with the + operator, and
 string mutability is managed by choosing between a constant or a variable, just
 like any other value in Swift. You can also use strings to insert constants,
 variables, literals, and expressions into longer strings, in a process known as
 string interpolation. This makes it easy to create custom string values for display,
 storage, and printing.
 */

/*
 String Literals
 
 You can include predefined String values within your code as string literals. A
 string literal is a sequence of characters surrounded by double quotation marks
 ("). Use a string literal as an initial value for a constant or variable:
 */

let someString = "Some string literal value"

/*
 If you need a string that spans several lines, use a multiline string literal-a
 sequence of characters surrounded by three double quotation marks:
 */

let quotation = """
The White Rabbit put on his spectacles. "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

/*
 A multiline string literal includes all of the lines between its opening and closing
 quotation marks. The string begins on the first line after the opening quoation
 marks (""") and ends on the line before the closing quotation marks, which
 means that neither of the strings below start or end with a line break:
 */

let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

/*
 When your source code includes a line break inside of a multiline string literal,
 that line break also appears in the string's value. If you want to use line breaks to
 make your source code easier to read, but you don't want the line breaks to be
 part of the string's value, write a backslash (\) at the end of those lines:
 */

let softWrappedQuotation = """
The White Rabbit put on his spectacles. "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

/*
 To make a multiline string literal that begins or ends with a line feed, write a blank
 line as the first or last line. For example:
 */

let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""

/*
 A multiline string can be indented to match the surrounding code. The
 white space before the closing quotation marks (""") tells Swift what whitespace
 to ignore before allo of the other lines. However, if you write whitespace at the
 beginning of a line in addition to what's before the closing quotation marks, that
 whitespace is included.
 */

let linesWithIndentation = """
    This line doesn't begin with whitespace.
        This line begins with four spaces.
    This line doesn't begin with whitespace.
    """

/*
 String literals can include the following special characters:
 - The escaped special characters \0 (null character), \\ (backslash), \t
 (horizontal tab), \n (line feed), \r (carriage return), \" (double quotation
 mark) and \' (single quotation mark)
 - An arbitrary Unicode scalar value, written as \u{n}, where n is a 1-8 digit
 hexadecimal number
 */

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

/*
 Initializing an Empty String
 
 To create an empty String value as the starting point for building a longer
 string, either assign an empty string literal to a variable, or initialize a new
 String instance with initializer syntax:
 */

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}

/*
 String Mutability
 
 You indicate whether a particular String can be modified (or mutated) by
 assigning it to a variable (in which case it can be modified), or to a constant
 (in which case it can't be modified):
 */

var variableString = "Horse"
variableString += " and carriage"

/*
 Strings Are Value Types
 
 Swift's String type is a value type. If you create a new String value, that
 String value is copied when it's passed to a function or method, or when it's
 assigned to a constant or variable. In each case, a new copy of the existing
 String value is created, and the new copy is passed or assigned, not the
 original version.
 
 Swift's copy-by-default String behavior ensures that when a function or
 method passes you a String value, it's clear that you own that exact String
 value, regardless of where it came from. You can be confident that the string you
 are passed won't be modified unless you modify it yourself.
 */

/*
 Working with Characters
 
 You can access the individual Character values for a String by iterating over
 the string with a for-in loop:
 */

for character in "Dog!🐶" {
    print(character)
}

/*
 Alternatively, you can create a stand-alone Character constant or variable from
 a single-character string literal by providing a Character type annotation:
 */

let exclamationMark: Character = "!"

/*
 String values can be constructed by passing an array of Character values as
 an argument to its initializer:
 */

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

/*
 Concatenating Strings and Characters
 
 String values can be added together (or concatenated) with the addition
 operator (+) to create a new String value:
 */

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

welcome.append(exclamationMark)

/*
 String Interpolation
 
 String interpolation is a way to construct a new String value from a mix of
 constants, variables, literals, and expressions by including their values inside
 a string literal. Each item that you insert into the string literal is wrapped in
 a pair of parentheses, prefixed by a backslash (\).
 */

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

/*
 Unicode
 
 Unicode is an international standard for encoding, representing, and processing
 text in different writing systems. It enables you to represent almost any character
 from any language in a standardized form, and to read and write those
 characters to and from an external source such as a text file or web page. Swift's
 String and Character types are fully Unicode-compliant, as described in this
 section.
 */

/*
 Every instance of Swift's Character type represents a single extended
 grapheme cluster. An extended grapheme cluster is a sequence of one or more
 Unicode scalars that (when combined) produce a single human-readable
 character. For example, Hangul syllables from the Korean alphabet can be
 represented as either a precomposed or decomposed sequence. Both of these
 representations qualify as a single Character value in Swift:
 */

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

/*
 Counting Characters
 
 To retrieve a count of the Character values in a string, use the count property of
 the string:
 */

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

/*
 Accessing and Modifying a String
 
 Each String value has an associated index type, String.Index, which
 corresponds to the position of each Character in the string. Use the
 startIndex property to access the position of the first Character of a
 String. The endIndex property is the position after the last character in
 a String. As a result, the endIndex property isn;t a valid argument to a
 string's subscript. If a String is empty, startIndex and endIndex are equal.
 */

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
var index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}
print("")

/*
 To insert a single character into a string at a specified index, use the
 insert(_:at:) method, and to insert the contents of another string at a
 specified index, use the insert(contentsOf:at:) method.
 */

var language = "Swift"
language.insert("!", at: language.endIndex)
language.insert(contentsOf: " Tour", at: language.index(before: language.endIndex))

/*
 To remove a single character from a string at a specified index, use the
 remove(at:) method, and to remove a substring at a specified range, use the
 removeSubrange(_:) method:
 */

language.remove(at: language.index(before: language.endIndex))
let range = language.index(language.endIndex, offsetBy: -5)..<language.endIndex
language.removeSubrange(range)

/*
 Substrings
 
 When you get a substring from a string-for example, using a subscript or a
 method like prefix(_:)-the result is an instance of Substring, not another
 string. Substrings in Swift have most of the same methods as string, which
 means you can work with substrings the same way you work with strings.
 However, unlike strings, you use substrings for only a short amount of time while
 performing actions on a string. When you're ready to store the result for a longer
 time, you convert the substring to an instance of String. For example:
 */

let ride = "roller-coaster"
let rideIndex = ride.firstIndex(of: "-") ?? ride.endIndex
let beginning = ride[..<rideIndex]

let newString = String(beginning)

/*
 Like strings, each substring has a region of memory where the characters that
 make up the substring are stored. The difference between strings and substrings
 is that, as a performance optimization, a substring can reuse part of the memory
 that's used to store the original string, or part of the memory that's used to
 store another substring. This performance optimization means you don't have to
 pay the performance cost of copying memory until you modify either the string
 or substring. As mentioned above, substrings aren't suitable for long-term
 storage-because they reuse the storage of the original string, the entire original
 string must be kept in memory as long as any of its substrings are being used.
 */

/*
 Comparing Strings
 
 String and character equality is checked with the "equal to" operator (==) and the
 "not equal to" operator (!=).
 */

let statement = "We're a lot alike, you and I."
let sameStatement = "We're a lot alike, you and I."
if statement == sameStatement {
    print("These two strings are considered equal")
}

/*
 To check whether a string has a particular string prefix or suffix, call the
 string's hasPrefix(_:) and hasSuffix(_:) methods, both of which take a single
 argument of type String and return a Boolean value.
 */

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

/*
 Unicode Representations of Strings
 
 When a Unicode string is written to a text file or some other storage, the Unicode
 scalars in that string are encoded in one of several Unicode-defined encoding
 forms. Each form encodes the string in small chunks known as code units. These
 include the UTF-8 encoding form (which encodes a string as 8-bit code units),
 the UTF-16 encoding form (which encodes a string as 16-bit code units), and the
 UTF-32 encoding form (which encodes a string as 32-bit code units)
 */

let dogString = "Dog‼🐶"

/*
 UTF-8 Representation
 */

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")

/*
 UTF-16 Representation
 */

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")

/*
 Unicode Scalar Representation
 
 Each UnicodeScalar has a value property that returns the scalar's 21-bit value,
 represented within a UInt32 value:
 */

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")
