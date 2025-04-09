**Arrays**
* Arrays are declared with `[]`
```swift
let animals = ["Dog", "Cat", "Rat", "Mouse"]
var numbers = [1, 2, 3, 4, 5]

var animal = animals[0] // animal = "Dog"
```
* An array can only contain one type of data.
* If you are creating an empty array you must specify its type. If you are supplying initial values, Swift will infer its type. There are two ways to type annotate an array:
```swift
var names = [String]() // This creates an empty string array
var cities = Array<String>() // This also creates an empty string array
```
* Here are some examples of array methods:
```swift
var names = ["Ralph", "Bart", "Lisa"]
print(names.contains("Homer")) // prints "false"
print(names.contains("Bart")) // prints "true"
print(names.count()) // prints 3
print(names.sorted()) // sorted() returns a new array in alphabetical order
					  // or ascending order for numbers
```

**Dictionaries**
* Dictionaries let us create associated key value pairs. We create dictionaries in Swift like this:
```swift
let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

// When we access a dictionary value we want to supply a default value in case we don't get a value back 
print(olympics[2012, default: "Unknown"])
```
* Swift will allow us to try and access into dictionaries even if the key doesn't exist, or there is no associated value. Every time we are getting a value from a dictionary we want to supply a default in case we get nothing back.
* You can also create an empty dictionary and add the values one at a time:
```swift
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var olympics = [Int: String]() // Create the empty dictionary
// Add the keys and their associated value
olympics[2012] = "London"
olympics[2016] = "Rio de Janeiro"
olympics[2021] = "Tokyo"
```

**Sets**
* Sets are created with `Set()` and the standard way to create a set from fixed data is to create an array first:
```swift
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
```
* The set will automatically remove any duplicates and may not maintain the order of the initial array. Order is irrelevant to sets.
* We add things to sets with `.insert()`
* `.contains()` runs exceptionally fast on sets.

**Enums**
* An enum is a set of named values that can help reduce duplicate code and variables. 
* Enums are declared with the `enum` keyword and curly braces.
```swift
enum Weekday {
	case monday, tuesday, wednesday, thursday, friday
}
```

* Recall that once you assign a value to a variable or constant, its data type becomes fixed – you can’t set a variable to a string at first, then an integer later on. For enums this means we can skip the enum name after the first assignment, like this:
```swift
// After the first assignment Swift knows that day must be a Weekday.
var day = Weekday.monday
day = .tuesday
day = .wednesday
```
* Swift will always store enums in an optimized form. In the example above Swift is likely to store `monday` as a single integer `0` rather than a string. This is a hidden benefit to using enums.