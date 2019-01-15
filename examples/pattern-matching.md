---
title: Pattern Matching
example_number: 5
layout: example
in_progress: true
---

- switch statements
  case let foo:
  case let (x, y):
  case let (x, 5):
  case let a: Int // type restrict
  case .some(let x): 
  case foo as Bar:
- destructuring
  let (x, y) = tuple
- in if/guard
  matching enums
- in loops
  pull out tuples

There are a few general ways of pattern matching:

```swift
let value: Any
// Just make it some value, so we can match anything against it
value = 5
switch value {
  // Match on the type and assign variable of that type
  case let number as Int:
    print("It's a number: \(number)")
  // If we don't care about the actual value, we can just match on the type
  case is String:
    print("it's a string")
  // All literals can be matched against
  case 12:
    print("twelve")
  case "number":
    print("it's a specific string")
  // We can use literals to restrict the match, while still extracting values
  case let (x, 5):
    print(x, "five")
  // If value is a tuple, we can extract the components from it
  case let (x, y):
    print(x, y)
  case .some(let value):
    print("It's an optional")
  // Just assign to a new variable, the type stays the same
  case let foo:
    print(foo)
}
```
