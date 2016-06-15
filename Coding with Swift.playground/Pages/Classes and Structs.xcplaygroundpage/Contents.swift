//:
//: # Classes and Structs
//:
//: Usually large systems/apps/projects are written in `OOP, Object-Oriented Programming`.
//:
//: The `object` here means a group of related variables (data) and functions who manipulate them.
//:
//: Take the following case as example:
//: We may use a group of related variables to represent a person:
//:

let firstName1: String = "Peter"
let lastName1: String = "Tsai"
let birthdayYear1: Int = 1988
let country1: String = "Taiwan"
let job1: String = "Engineer"

//: 
//: But how's if we have to represent another person?
//:

let firstName2: String = "Amber"
let lastName2: String = "Tsai"
let birthdayYear2: Int = 1990
let country2: String = "Taiwan"
let job2: String = "Designer"

//:
//: ... Well, this doesn't make sense ...
//: How's about use a dictionary to wrap them together?
//:

let personDictionary1: [String: String] = [
    "firstName": "Peter",
    "lastName": "Tsai",
    "birthdayYear": "1988",
    "country": "Taiwan",
    "job": "Engineer",
]

let personDictionary2: [String: String] = [
    "firstName": "Amber",
    "lastName": "Tsai",
    "birthdayYear": "1990",
    "country": "Taiwan",
    "job": "Designer",
]

//:
//: And now we have functions named "greeting" and "age"
//:

func greeting1(person: [String: String]) -> String {
    // NOTE: Check `Optionals in Swift` for the exclamation mark (`!`) in the follow line.
    return "Hi, \(person["firstName"]!) \(person["lastName"]!)"
}

func age(person: [String: String]) -> Int {
    // NOTE: Check `Optionals in Swift` for the exclamation mark (`!`) in the follow line.
    return 2016 - Int(person["birthdayYear"]!)!
}

let greetingToPeter1 = greeting1(personDictionary1)
let ageOfAmber1 = age(personDictionary2)

// But how's if ... try to uncomment the following line to see what happened
//age(["Unkwown": "Unknown"])

//:
//: Besides above issue, actually the `age` function should be one of attributes of a person, we should
//: bind them together with the data of a person.
//:
//: We can use `struct` to help these issues.
//:

struct Person {
    let firstName: String
    let lastName: String
    let birthdayYear: Int
    let country: String
    let job: String

    func age() -> Int {
        return 2016 - self.birthdayYear
    }
}

func greeting(person: Person) -> String {
    return "Hi, \(person.firstName) \(person.lastName)"
}

let person1 = Person(firstName: "Peter", lastName: "Tsai", birthdayYear: 1988, country: "Taiwan", job: "Engineer")
let person2 = Person(firstName: "Amber", lastName: "Tsai", birthdayYear: 1990, country: "Taiwan", job: "Designer")


let greetingToPeter2 = greeting(person1)
let ageOfAmber2 = person2.age()

//:
//: As mentioned before, the variables and constants declared in the `struct`, like associated within the `struct`,
//: are called as `properties` of this `struct`. Also the `func` declared inside it are called the `method` of 
//: the `struct`.
//:
//: The `struct` here is used like _a template_ of people, and the `person1` and `person2`, which are variables used
//: to represent real people, are called **instances** of the struct, the content made by _the template_.
//:
//: In the implementation of functions associated within a struct, we can use `self` to reference current instance.
//: And to reference the properties and methods of a struct, we would use **dot operator** (`.`).
//:

//:
//: # Classes
//:
//: In Swift, there are both `struct` and `class`. They are similar but actually quite different under the hood.
//: The concept of classes are much like the one in other programming languages, but Swift suggest you use
//: structs whenenver possible.
//:

//:
//: --------------------------------------------------------------------------------------------------------------------
//: [<- previous](@previous) | [next ->](@next)
//:
