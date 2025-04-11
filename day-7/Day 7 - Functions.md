* Functions are defined in swift with the `func` keyword. 
* Parameters are enclosed in `()` and the function code itself is enclosed in `{}`
* When we pass arguments during a function call we must use the names of the parameters.
* We specify a function's return type with `->` after the parameters.
* We use the `return` keyword to specify when a function should stop and return data. If your function is only one line of code you can actually omit the return keyword and Swift will infer that you want to return.
```swift
func cubed(number: Int) -> Int {
	return pow(number, 3) // Don't actually need return keyword
}

let cubedNumber = cubed(number: 2) // returns 8
```
* You can make functions return multiple values. The best practice for this is to use tuples.
```swift
// Returns array - Hard to read
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])") 
```
vs
```swift
// Returns tuple - More readable
func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift") // Swift already knows the names of our tuple values no need to write them when you return
}

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")
```

* By forcing us to name parameters and use those names when calling a function, Swift makes it easy to overload functions. For example, this is valid swift code:
```swift
// Swift knows which function we want to call based on the parameters we provide
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }
```
* Some earlier functions we were exposed to did not require parameter labels to be used, for example: contains() 
* By adding an `_` before a parameter name in your function signature you can allow that parameter label to be omitted when the function is called.
* This is useful when it's obvious what a parameter is even without its label.
```swift
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string) // Without our _ we would have to call this as isUppercase(string: string)
```
* Swift also lets you add a 2nd label in place of `_` which can be used as the parameter label when calling the function. 
```swift
// 'for' is the label we'll use when we call the function
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5) // This reads better than printTimesTables(number: 5)
```