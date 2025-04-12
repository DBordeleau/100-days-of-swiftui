* To handle errors we start by creating an enum of type `error` that will define the possible errors that could occur.
```swift
enum PasswordError: error {
	case short, obvious
}
```
* Next we write a function that will throw one of these errors. In our example it will be a function that determines if a password is too short or obvious and throws the appropriate error if it is.
```swift
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// And then we would call this function in a do-try block like this:
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
```
* You must use the `try` keyword when calling a function that can throw an error.
* You must always have one `catch` block which can handle *any* kind of error. Whether or not you have specific blocks for specific errors is optional.
* Most errors thrown by Apple provide a meaningful message that you can present to your user if needed. Swift makes this available using an `error` value that’s automatically provided inside your `catch` block, and it’s common to read `error.localizedDescription` to see exactly what happened.