* For loops are declared in swift like this:
```swift

// Iterates through all items in a collection
for x in someArr {
	print(x)
}

// Iterates through the numbers 1 through 10
for i in 1...10 {
	print(i)
}
```

* While loops are still here too and look pretty normal:
```swift
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")
```

* The `continue` keyword skips the current iteration of a loop and immediately moves onto the next one.
* The `break` condition stops the current iteration of a loop and all subsequent iterations from running.