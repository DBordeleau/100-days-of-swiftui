import Cocoa

/*
 Your goal is to write a Swift playground that:
    1. Creates a constant holding any temperature in Celsius.
    2. Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
    3. Prints the result for the user, showing both the Celsius and Fahrenheit values.
 */

let celsius = 32.1

var fahrenheit = ((celsius * 9) / 5) + 32

print("\(celsius)° C is \(fahrenheit)° F")
