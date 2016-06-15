//:
//: # Functions
//:
//: A function in a programming language is similar to the function you learned in math classes.
//:
//: ```
//: f(x, y) = x^2 + 2*x*y + y^2
//: z = f(5, 1)
//: ```
//:
//: In the above example, we would say there's a function called `f` which accept `x` and `y` as its parameters.
//: It will manipulate its parameters and _returns_ a value. 
//: In this case, we _pass in_ `5` and `1`. The `z` is the result/output of the function `f`,
//: which is expected to be `36`.
//:
//: In Swift, we would write the above example like:
//:

func f(x: Int, y: Int) -> Int {
    return x*x + 2*x*y + y*y
}

let z = f(5, y: 1)

//:
//: We use `func` keyword to declare a function and use `->` to present the return type of the function.
//: Also, we use `return` to pass the result.
//:
//: While calling the function, by default, you don't have to type the name of the first argument (parameter), but
//: have to type the name of the rest arguments. So in this case, `x` is omitted when calling the function.
//:
//: > Check `Function Parameter Names of Swift` and `External name of arguments of Swift functions`
//:
//: > In Swift 3.0, this behavior is changed to "you have to type the argument name of all arguments", like:
//: > ```
//: > let z = f(x: 5, y: 1)
//: > ```
//:

func average(numbers: [Double]) -> Double {
    var summary: Double = 0
    for number in numbers {
        summary = summary + number
    }
    return summary / Double(numbers.count)
}
let averageOfOneToFive = average([1, 2, 3, 4, 5])

//:
//: --------------------------------------------------------------------------------------------------------------------
//: [<- previous](@previous) | [next ->](@next)
//:
