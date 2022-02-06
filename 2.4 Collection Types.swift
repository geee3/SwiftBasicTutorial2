// by geee3, February 5, 2022

import UIKit

/*
 Collection Types
 
 Swift provides three primary collection types, known as arrays, sets, and
 dictionaries, for storing collections of values. Arrays are ordered collections
 of values. Sets are unordered collections of unique values. Dictionaries are
 unordered collections of key-value associations. Arrays, sets, and dictionaries
 in Swift are always clear about the types of values and keys that they can store.
 This means that you can't insert a value of the wrong type into a collection by
 mistake. It also means you can be confident about the type of values you will
 retrieve from a collection.
 */

/*
 Mutability of Collections
 
 If you create an array, a set, or a dictionary, and assign it to a variable, the
 collection that's created will be mutable. This means that you can change (or
 mutate) the collection after it's created by adding, removing, or changing items in
 the collection. If you assign an array, a set, or a dictionary to a constant, that
 collection is immutable, and its size and contents can't be changed.
 */

/*
 Arrays
 
 An array stores values of the same type in an ordered list. The same value can
 appear in array multiple times at different position.
 
 The type of a Swift array is written in full as Array<Element>, where Element is
 the type of values the array is allowed to store. You can also write the type of an
 array in shorthand from as [Element]. Although the two forms are functionally
 identical, the shorthand form is preferred and is used throughout this guide when
 referring to the type of an array. You can create an empty array of a certain type
 using initializer syntax:
 */

var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) items.")

someInts = []
print("someInts is of type [Int] with \(someInts.count) items.")

/*
 Swift's Array type also provides an initializer for creating an array of a certain
 size with all of its values set to the same default value. You pass this initializer
 a default value of the appropriate type (called repeating): and the number of times
 that value is repeated in the new array (called count):
 */

var threeDoubles = Array(repeating: 0.0, count: 3)

/*
 You can create a new array by adding together two existing arrays with
 compatible types with the addition operator (+). The new array's type is inferred
 from the type of the two arrays you add together:
 */

var anotherThreeDoubles = Array (repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

/*
 You can also initialize an array with an array literal, which is a shorthand way to
 write one or more values as an array collection. An array literal is written as a list
 of values, separated by commas, surrounded by a pair of square brackets:
 */

var shoppingList: [String] = ["Eggs", "Milk"]

/*
 You access and modify an array through its methods and properties, or by using
 subscript syntax. To find out the number of items in an array, check its read-only
 count property:
 */

print("The shopping list contains \(shoppingList.count) items.")

/*
 Use the Boolean isEmpty property as a shortcut for checking whether the count
 property is equal to 0:
 */

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}

/*
 You can add a new item to the end of an array by calling the array's append(_:)
 method. Alternatively, append an array of one or more compatible items with the
 addition assignment operator (+=):
 */

shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

/*
 Retrieve a value from the array by using subscript syntax, passing the index of the
 value you want to retrieve within square brackets immediately after the name of the
 array. You can use subscript syntax to change an existing value at a given index:
 */

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"

/*
 You can also use subscript syntax to change a range of values at once, even if the
 replacement set of values has a different length than the range you are replacing.
 */

shoppingList[4...6] = ["Bananas", "Apples"]

/*
 To insert an item into the array at a specified index, call the array's
 insert(_:at:) method. Similarly, you remove an item from the array with the
 remove(at:) method. This method removes the item at the specified index and returns
 the removed item(although you can ignore the returned value if you don't need it):
 */

shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at: 0)

/*
 If you want to remove the final item from an array, use the removeLast() method
 rather than the remove(at:) method to avoid the need to query the array's
 count property. Like the remove(at:) method, removeLast() returns the
 removed item:
 */

let apples = shoppingList.removeLast()

/*
 You can iterate over the entire set of values in an array with the for-in loop.
 If you need the integer index of each item as well as its value, use the
 enumerated() method to iterate over the array instead. For each item in the
 array, the enumerated() method returns a tuple composed of an integer and the
 item. The integers start at zero and count up by one for each item; if you
 enumerate over a whole array, these integers match the item's indices. You can
 decompose the tuple into temporary constants or variables as prat of the
 iteration:
 */

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

/*
 Sets
 
 A set stores distinct values of the same type in a collection with no defined
 ordering. You can use a set instead of an array when the order of items isn't
 important, or when you need to ensure that an item only appears once.

 The type of a Swift set is written as Set<Element>, where Element is the type
 that the set is allowed to store. Unlike arrays, set don't have an equivalent
 shorthand form. You can create an empty set of a certain type using initializer
 syntax:
 */

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

/*
 Alternatively, if the context already provides type information, such as a function
 argument or an already typed variable or constant, you can create an empty set
 with an empty array literal:
 */

letters.insert("a")
letters = []

/*
 You can also initialize a set with an array literal, as a shorthand way to write one
 or more values as a set collection:
 */

var favoriteGenres: Set = ["Rock", "Classical", "Hiphop"]

/*
 You access and modify a set through its methods and properties. To find out the
 number of items in a set, check its read-only count property:
 */

print("I have \(favoriteGenres.count) favorite music genres.")

/*
 Use the Boolean isEmpty property as a shortcut for checking whether the count
 property is equal to 0:
 */

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

/*
 You can add a new item into a set by calling the set's insert(_:) method. You
 can remove an item from a set by calling the set's remove(_:) method, which
 removes the item if it's a member of the set, and returns the removed value, or
 returns nil if the set didn't contain it. Alternatively, all items in a set can
 be removed with its removeAll() method.
 */

favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

/*
 To check whether a set contains a particular item, use the contains(_:)
 method.
 */

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

/*
 Swift's Set type doesn't have a defined ordering. To iterate over the values of a
 set in a specific order, use the sorted() method, which returns the set's
 elements as an array sorted using the < operator.
 */

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

/*
 Performing Set Operations
 
 You can efficiently perform fundamental set operations, such as combining two
 sets together, determining which values two sets have in common, or determining
 whether two sets contain all, some, or none of the same values.
 */

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

/*
 - Use the "is equal" operator (==) to determine whether two sets contain all of
 the same values.
 - Use the isSubset(of:) method to determine whether all of the values of a
 set are contained in the specified set.
 - Use the isSuperset(of:) method to determine whether a set contains all of
 the values in a specified set.
 - Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine
 whether a set is a subset or superset, but not equal to, a specified set.
 - Use the isDisjoint(with:) method to determine whether two sets have no
 values in common.
 */

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

/*
 Dictionaries
 
 A dictionary stores associations between keys of the same type and values of the
 same type in a collection with no defined ordering. Each value is associated with
 a unique key, which acts as an identifier for that value within the dictionary.
 Unlike items in an array, items in a dictionary don't have a specified order. You
 use a dictionary when you need to look up values based on their identifier, in much
 the same way that a real-world dictionary is used to look up the definition for a
 particular word.
 
 The type of a Swift dictionary is written in full as Dictionary<Key, Value>,
 where Key is the type of value that can be used as dictionary key, and Value is
 the type of value that the dictionary stores for those keys. As with arrays, you
 can create an empty Dictionary of a certain type by using initializer syntax:
 */

var namesOfIntegers: [Int: String] = [:]

/*
 If the context already provides type information, you can create an empty
 dictionary with an empty dictionary literal, which is written as [:] (a colon inside
 a pair of square brackets):
 */

namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

/*
 You can also initialize a dictionary with a dictionary literal, which has a similar
 syntax to the array literal seen earlier. A dictionary literal is shorthand way to
 write one or more key-value pairs as a Dictionary collection.
 
 A key-value pair is a combination of a key and a value. In a dictionary literal, the
 key and value in each key-value pair are separated by a colon. The key-value pairs
 are written as a list, separated by commas, surrounded by a pair of square brackets:
 */

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

/*
 You access and modify a dictionary through its methods and properties, or by
 using subscript syntax. As with an array, you find out the number of items in a
 Dictionary by checking its read-only count property:
 */

print("The airports dictionary contains \(airports.count) items.")

/*
 Use the Boolean isEmpty property as a shortcut for checking whether the count
 property is equal to 0:
 */

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}

/*
 You can add a new item to a dictionary with subscript syntax. Use a new key of
 the appropriate type as the subscript index, and assign a new value of the
 appropriate type. You can also use subscript syntax to change the value
 associated with a particular key:
 */

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

/*
 The updateValue(_:forKey:) method returns an optional value of the
 dictionary's value type. For a dictionary that stores String values, for example,
 the method returns a value of type String?, or "optional String". This optional
 value contains the old value for that key if one existed before the update, or nil
 if no value existed:
 */

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue)")
}

/*
 You can also use subscript syntax to retrieve a value from the dictionary for a
 particular key. Because it's possible to request a key for which no value exists, a
 dictionary's subscript returns an optional value of the dictionary's value type. If
 the dictionary contains a value for the requested key, the subscript returns an
 optional value containing the existing value for that key. Otherwise, the subscript
 returns nil:
 */

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}

/*
 You can use subscript syntax to remove a key-value pair from a dictionary by
 assigning a value of nil for that key. Alternatively, remove a key-value pair
 from a dictionary with the removeValue(forKey:) method. This method removes the
 key-value pair if it exists and returns the removed value, or returns nil if
 no value existed:
 */

airports["APL"] = "Apple International"
airports["APL"] = nil

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary doesn't contain a value for DUB.")
}

/*
 You can iterate over the key-value pairs in a dictionary with a for-in loop. Each
 item in the dictionary is returned as a (key, value) tuple, and you can
 decompose the tuple's members into temporary constants or variables as part of
 the iteration:
 */

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

/*
 You can also retrieve an iterable collection of a dictionary's keys or values by
 accessing its keys and values properties:
 */

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

/*
 If you need to use a dictionary's keys or values with an API that takes an Array
 instance, initialize a new array with the keys or values property:
 */

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)
