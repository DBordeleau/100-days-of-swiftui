<u>**Summary**</u>

Each time Swift sees two strings being joined together using `+` it has to make a new string out of them before continuing which can be quite wasteful.

It's much more efficient to use string interpolation rather than joining variables to make a string.

```swift
// Prints "Hello, my name is Taylor and I'm 26 years old."

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

// vs

let message = "Hello, my name is " + name + " and I'm " + String(age) " years old."
```

Another advantage to interpolation is we don't need to cast age as a string like we would have to had we chosen to join (+) instead. You can also do arithmetic inside string interpolation.

```swift
print("5 x 5 is \(5 * 5)")

// This prints “5 x 5 is 25”
```