//:
//: # Collection Data Types
//:
//: ![](swift-collections.png)
//:
//: Swift provides three primary collections, known as arrays, sets, and dictionaries. Arrays are ordered
//: collections of values. Sets are unordered collections of _unique_ values. Dictionaries are unordered collections of
//: key-value associations.
//:
//: Arrays, sets, and dictionaries in Swift are always clear about the types of values and keys that they can store.
//: They are implemented as **generic collections**.
//:

//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## Array
//:
//: You can treat an array like a sequence of variables which are indexed by continuous numbers.
//:
//: An array could be created via an array literal, which is values separated by commas (`,`) and wrapped by a bracket
//: (`[]`)
//:

[1, 2, 3]  // An array with 3 integers

//:
//: The type of a array is written as `[Element]`, where `Element` is the type of values the array is allowed to store.
//:

let arrayOfStrings: [String] = ["Hello", "World"]
let arrayOfIntegers: [Int] = [1, 2, 3]
// NOTE: Try to uncomment the following line to see what happend
//let arrayOfIntegers1: [Int] = [1, 2, 3.1415926]
let emptyArrayOfFloats: [Float] = []

//:
//: ### Access the elements of an array
//:
//: In Swift, we can use **dot operator** (`.`) to access variables and functions associated to a value. We usually
//: call the assocatiated variable as `properties` of a variable, and the associated functions as `methods` of a
//: variable.
//:
//: For example, each arrays has a property named `count`, whose value is the number of elements in this array.
//: Also, there's a property named `isEmpty`, which is a boolean indicating whether this is an empty array or not.
//:

arrayOfStrings.count
arrayOfIntegers.isEmpty
emptyArrayOfFloats.isEmpty

//:
//: You can just use **subscript operator** (`[]`) to access elements in an array with an index.
//: Note that the index is zero-based. (The first number is `0` but not `1`.)
//:
//: Besides using the subscript operator, there are also some _properties_ for accessing elements.
//:

let firstString = arrayOfStrings[0]
let secondInteger = arrayOfIntegers[1]
// NOTE: Try to uncomment this line to see what error message the Xcode yields
//let thirdString = arrayOfStrings[2]
let lastString = arrayOfStrings.last

//:
//: ### Manipulate with the elements of an array
//:
//: There are some _methods_ used to manipulate the array
//:

var arrayOfFruits: [String] = ["Apple"]
// Use `append` method to add elements into an array
arrayOfFruits.append("Banana")
// Arrays are also addable
arrayOfFruits = arrayOfFruits + ["Orange", "Grape", "ラーメン"]
arrayOfFruits.removeAtIndex(4)
print(arrayOfFruits)

//:
//: ### Mutability
//:
//: In Swift, if you declare collections as constant (i.e. using `let`), they would become immutable
//: (i.e. not be able to be modified, like adding or removing elements).
//:

let numberArray1 = [1, 2, 3]
//numberArray1.append(2)  // ERROR: Uncomment this line to see which error message you get.

//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## Dictionary
//:
//: You can treat a dictionary like a collection of variables which are labelled by **keys**.
//:
//: Each `value` in a _dictionary_ is associated with `a unique key`, which acts as an identifier for that value within
//: the dictionary. Unlike items in an array, items in a dictionary do not have a specified order. You use a dictionary
//: when you need to look up values based on their identifier, in much the same way that a real-world dictionary is
//: used to look up the definition for a particular word.
//:
//: A dictionary could be created by a dictionary literal. A key-value pair is annotated by _colon_ (`:`) like
//: `key: value`, and each key-value pairs is separated by _commas_ (`,`). The whole literal is wrapped by a _bracket_
//: (`[]`). Note, Swift also uses **bracket** for dictionary literals, unlike most programming languages which
//: use _curly braces_ (`{}`) for dictionaries
//:

[
    "Peter": "peter@nccu.edu.tw",
    "Angela": "angela@nccu.edu.tw"
]

//:
//: The type of a dictionary is written as `[Key: Value]`, where `Key` is the type of value that can be
//: used as a dictionary key, and `Value` is the type of value that the dictionary stores for those keys.
//:

let namesOfIntegers: [Int: String] = [1: "One", 2: "Two", 3: "Three"]
let contactBook: [String: String] = ["Peter": "Taipei, Taiwan", "Steve": "Palo Alto, CA, USA"]
let emptyDictionary: [String: String] = [:]

//:
//: ### Access the elements of a dictionary
//:
//: You can use **subscript operator** (`[]`) to access elements in a dictionary with its keys.
//:

namesOfIntegers.count
emptyDictionary.isEmpty

let one = namesOfIntegers[1]
let steveHome = contactBook["Steve"]

//:
//: ### Manipulate with the elements of a dictionary
//:
//: Just assign a new value with its key by the subscript operator
//:

var universities: [String: String] = ["NCCU": "政治大學", "NTU": "國立台灣大學"]
universities["NCCU"] = "國立政治大學"  // Update
universities["NCKU"] = "國立成功大學"  // Insert
print(universities)

// Try to uncomment the following line to see what happend
//namesOfIntegers[4] = "Four"

//: --------------------------------------------------------------------------------------------------------------------
//: [<- previous](@previous) | [next ->](@next)
//:
