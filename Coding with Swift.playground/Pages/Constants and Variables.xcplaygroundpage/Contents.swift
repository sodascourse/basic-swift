//:
//: # Constants and Variables
//:
//: Both constatns and variables are used to store **values**. The values would be the input data 
//: from users, a flag indicating current execution status of the program, last execution result 
//: of a function, or some values which would be used later.
//:
//: You can use constants and variables like the memo notes during calculating math problems. 
//: Actually they are treated as storage areas where your programs can manipulate.
//:
//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## Comments
//:
//: Comments are lines which the _compiler_ won't treat them as executable code.
//: It's usually used for programmer as notes for themselves or other collaborators who would also 
//: read and use this code file.
//:
//: Swift uses **C-style comments**:
//: - A single-line comment starts with `//`.
//: - A multiline comment starts with `/*` and ends with `*/`.
//:

// This is a single-line comment.

/*
 * This is a multiline comment.
 */

//: > In this tutorial playground, some comments are actually code which is not runnable.
//: > You can try to uncomment those lines to see the error response from Xcode.
//:
//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## Literals
//:
//: A literal is the source code representation of a value of a type, such as a number or string.
//:

42  // This is an integer literal
3.141596  // This is a floating-point literal
"Hello World!"  // This is a string literal
true  // This is a boolean literal

//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## Variables
//:
//: Swift uses `var` to declare its variables, like JavaScript. Each variables (and also constants) **has a type**.
//: Once a variable is declared with a type, its type could not be changed and it could only be assigned with values 
//: of that type.
//:
//: The syntax of declaring a variable is `var <VARIABLE_NAME>: <VARIABLE_TYPE> = <INITIAL_VALUE>`
//: - We put the variable name after the `var` keyword.
//: - After the variable name, there's a colon (`:`) and
//:

var answer: Int = 0
//: ![](declare-variable.png)

answer = 42
//: ![](assign-variable.png)

// Assign a non-integer value to the "answer" variable, which is not allowed
// NOTE: Try to uncomment the following line to see what happened.
//answer = "Hello"

//:
//: Also, in Swift, we like to use **CamelCase** when naming variables and constants.
//: "CamelCase" means we join each word in the name and make the first letter of each word uppercase.
//:

// From "first name" to "firstName"
var firstName = "Peter"
// From "last name" to "lastName"
var lastName = "Tsai"

//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## Constants
//:
//: The syntax of declaring constants is similar to variables, but let's replace `var` with `let`.
//:
//: In Swift, We prefer to use constants to store values more than variables.
//: Variables are only used when the value would be changed later.
//:

let 🍎: String = "Apple"

// Constant is readonly and cannot assign a new value to it again.
// NOTE: Try to uncomment the following line to see what happened.
//🍎 = "蘋果"

//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## Scope of variables and constants
//:
//: The "scope" of a variable or a constant means the life time of that variable/constant or the peroid which
//: we could access it in our program.
//:
//: Generally, each _brackets pair_ (`{}`) represents a scope range, like the one you used with `if` statement.
//: Scopes could be nested, and the inner scope could access variables and constants declared in the outer one.
//:

if answer == 42 {
    let quote: String = "the answer to life the universe and everything"

    if 1 + 1 == 2 {
        // Access the `quote` constant which is defined in the outer scope
        print(quote)
    }
}
// The scope of the variable `quote` is the `if` statement, so you cannot access it out of the `if` context.
// NOTE: Try to uncomment the following line to see what happened.
//print(quote)

//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## Basic Data Types
//:
//: In Swift, there are 6 most common used scalar data types:
//: - `Int` and `UInt`: Used to represent _integers_ and _unsigned integers_ (positive integers and 0).
//: - `Float` and `Double`: Used to represnet fractions. `Double` is more precise than `Float`.
//: - `String`: Used to represent text data
//: - `Bool`: Used to represent a condition. It only has two values: `true` and `false`.
//:

let integerValue: Int = -42
let unsignedIntegerValue: UInt = 42
let floatValue: Float = 3.1415926
let doubleValue: Double = 2.7182818285
let stringValue: String = "string"
let boolValue: Bool = true

//:
//: To convert value between these basic data types, just pass the value into another type, like:
//:

let integerString: String = String(integerValue)

//:
//: --------------------------------------------------------------------------------------------------------------------
//:
//: ## Type Inference
//:
//: For the convenience, Swift has a feature called **Type Inference** which means the compiler would infer type
//: of variables and constants automatically; you don't have to specify the type of each variable manually, 
//: like Java and C++.
//:
//: You can use _option+click_ on each variables or constants to see the type infered by Swift.
//: You may have to wait for the mouse pointer to become a _question mark_, "?", and you would see this popup:
//: ![](check-inferred-type.png)
//:

// Try to use "option+click" to see the type of following variable and constant inferred by Swift compiler.
let 哈囉 = "Hello, Swift"
var せん = 1000

//:
//: --------------------------------------------------------------------------------------------------------------------
//: [<- previous](@previous) | [next ->](@next)
//:
