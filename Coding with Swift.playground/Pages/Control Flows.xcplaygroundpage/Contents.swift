//:
//: # Control Flows
//:
//: Swift has following common control flow statements:
//: - `if/else`: Choose a code block to execute from two by a specified condition
//: - `for-in`: Repeatly execute a code block by enumerating a collection
//: - `guard`: Make sure a condition is true
//: - `switch/case`: Choose a code block to execute from multiple ones by a series of conditions
//: - `while` and `repeat-while`: Repeatly execute a code block when a condition is still true
//:
//: Here, we would introduct the first 2: `if/else` and `for-in`
//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## if/else
//:
//: A if/else statement would choose a code block to execute by a specified condition.
//:
//: A code block is lines of code which are wrapped by a brackets pair (`{}`).
//:
//: In Swift, conditions must be booleans. Conditions could be chained by **and operators** (`&&`) and
//: **or operators** (`||`).
//:

let temperature = 19.0
let moisture = 0.70
if temperature < 10 || (temperature < 15 && moisture >= 0.70) {
    print("Cold")
} else if temperature < 20 {
    print("A little cold")
} else {
    print("It's okay")
}
if temperature == 19.0 {
    print("Great wether today")
}

//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## For-in loops
//:
//: In Swift, we use `for-in` loops to enumerate elements in a collection.
//:

let numbers = [1, 2, 3, 4, 5, 6, 7, 8]
var summaryOfNumbers = 0
for number in numbers {
    summaryOfNumbers = summaryOfNumbers + number
}
print(summaryOfNumbers)

let japaneseNumbers = [
    1: "いち",
    2: "に",
    3: "さん",
    4: "よん",
    5: "ご",
    6: "ろく",
    7: "なな",
    8: "はち",
    9: "きゅう",
    10: "じゅう",
]
for (number, japaneseNumber) in japaneseNumbers {
    print("In Japanese, \(number) is \(japaneseNumber)")
}

//: 
//: In Swift, both "..." and "..<" are range operators. They are used to represent a sequence of numbers.
//: - `...` is **Closed Range Operator** which includes both _start_ and _end_ in the range.
//: - `..<` is **Half-Open Range Operator** which includes only _start_ but not _end_ in the range.
//:

for i in 0...5 {
    print(i)
}

for i in 0..<5 {
    print(i)
}

//:
//: --------------------------------------------------------------------------------------------------------------------
//: [<- previous](@previous) | [next ->](@next)
//:
