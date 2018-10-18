---
title: Values
example_number: 2
layout: example
---

Swift has the standard types you'd expect in a programming language:

```swift
// Numbers default to `Int`
let integer = 5
// If there's a decimal point, it's a `Double`
let double = 3.14
// Quoted strings default to being a `String`
let string = "Hello, Swift {{ site.swift_version }}"
// Booleans, of type Bool
let bool1 = true
let bool2 = false
```

Literals also change depending on context, which is discussed in more detail in [Custom Literals]({{ 'examples/custom-literals' | relative_url }}).

```swift
// Double literals can be assigned to floats
let float: Float = 3.14
// Single-character string literals can be Characters
let char: Character = "🔥"
// Int literals can be assigned to integers of different types
let long: UInt64 = 123
```

If you're not sure what the type of something is, you can check it using the `type(of:)` function. This is the type at runtime, not compile time - so it works on variables of type `Any`.

```swift
let someValue: Any
someValue = 54
print(type(of: someValue)) // prints "Int"
```