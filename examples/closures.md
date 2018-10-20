---
title: Closures
example_number: 6
layout: example
in_progress: true
---

You can do closures. They capture values.

- escaping
- arguments
- type hinting
- implicit arguments

Functions are first-class objects in Swift - they have a type and can be assigned to a variable. There is effectively no difference between a function defined with the `func` keyword and a closure.

```swift
// The type annotation shows this closure takes a list of numbers and returns nothing
let printNumbers: ([Int]) -> () = { numbers in
  for number in numbers {
    print(number)
  }
}

// Closures can be called like regular functions, but without argument labels:
printNumbersClosure([4, 5, 6])

// Normal functions can be assigned to variables
let read = readLine
let line = read(true)
print(line!)
```