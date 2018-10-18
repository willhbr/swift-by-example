---
title: Variables
example_number: 3
layout: example
skip_tests: true
---

Mutability is baked in to every variable in Swift.

```swift
// Variables declared with `let` are immutable, and cannot be reassigned
let immutable = 5
// Fails to compile "cannot assign to value: 'immutable' is a 'let' constant"
immutable = 10
// Mutable variables are declared with `var`
var mutable = 5
// They can be reassigned and mutable operators can be used on them
mutable = 10
```
