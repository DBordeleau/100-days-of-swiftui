import Cocoa

/*
 Challenge: Create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.
 */

var names: [String] = ["Bart", "Marge", "Lisa", "Homer", "Homer"]
let uniqueNames = Set(names)
print(names.count)
print(uniqueNames.count)

