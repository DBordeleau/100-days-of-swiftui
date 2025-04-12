import Cocoa
/*
 Prompt: Write a function that accepts an integer from 1 through 10,000, and returns 
 the integer square root of that number. That sounds easy, but there are some catches:

 1. You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
     
 2. If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
    
 3. You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
     
 4. If you can’t find the square root, throw a “no root” error.
 */

enum SquareRootErrors: Error {
    case outOfBounds, noRoot
}

func integerRoot(_ num : Int) throws -> Int {
    if num < 1 || num > 10_000 {
        throw SquareRootErrors.outOfBounds
    }
    for n in 1...num {
        if n * n == num {
            return n
        } else {
            continue
        }
    }
    throw SquareRootErrors.noRoot
}

do {
    let sq = try integerRoot(144)
    print(sq)
} catch SquareRootErrors.noRoot {
    print("No integer square root :(")
} catch SquareRootErrors.outOfBounds {
    print("Number must be between 1 and 10,000")
}
