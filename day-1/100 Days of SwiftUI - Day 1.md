
<u>**Summary**</u>

*var* keyword initialises a mutable variable.

*let* key initialises a constant.

strings can be extremely long, but multiline strings must be denoted with 3 double quotes.

```swift
// This is okay:

var greeting = """
hello my name is
Greg
"""

// These are not:

var greeting = "hello my name is
Greg"

var greeting = """hello my name is 
Greg"""
```

When calling a method in swift we only need to append () if the method is doing some actual work. If the method simply reads data and returns something we don't need brackets. (This is not necessarily true but is good enough for now)

```swift
var name = "mike"

print(name.count) // This works and prints "4". No brackets needed

print(name.uppercased()) // This needs brackets because it is modifying the data
```

[Strings have all sorts of cool methods in Swift.](https://developer.apple.com/documentation/swift/string)

If a decimal appears in a number, Swift will type it as a double. It will be an integer otherwise.

You can use underscores in numbers as a visual aid:
```swift
// These are the same value, but the first is easier to read
var balance = 100_000_000 
var balance2 = 100000000
```

Decimals and Integers cannot be used in the same operation without casting one as another.

```swift
let num1 = 1.0
let num2 = 3

var num3 = num1 + num2 // This won't work

// You need to either cast num1 as an integer like so:
var num3 = Int(num1) + num2

// Or cast num2 as a double
var num3 = num1 + Double(num2)
```