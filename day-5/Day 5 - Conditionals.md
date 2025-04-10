* If statements are declared in swift like this:
```swift
if someCondition {
    print("Do something")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
} // Prints

if percentage < 85 {
    print("Sorry, you failed the test.")
} // Doesn't print

if age >= 18 {
    print("You're eligible to vote")
} // Prints
```

* We can use multiple conditions in an if statement.
	* Separate conditions with `&&` if all conditions must pass.
	* Separate conditions with `||` if only a single condition needs to pass.

* Swift also has switch statements for conditions with many cases:
```swift
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}
```
* In Swift, a switch statements must be exhaustive and handle all possible cases. In the example above, if we removed any single case Swift would complain.
* In situations where this is difficult/impossible (strings), you can get around this by providing a "default" case that Swift will use whenever the condition doesn't match any of your other defined cases.
* Swift executes only the first case that matches the condition. If you want Swift to execute subsequent cases that might match you need to add `fallthrough` to the case block.

* Swift also supports the ternary operator `?` which checks a condition and returns one of two values depending on whether or not the condition is true.
```swift
let age = 18
let canVote = age >= 18 ? "Yes" : "No" // = "Yes"
```