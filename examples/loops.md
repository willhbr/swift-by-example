---
title: Loops
example_number: 4
layout: example
---

Iterating a certain number of times:

```swift
for i in 0..<10 {
  print(i)
}
```

Ranges can be created with the `..<` and `...` operators, which operate on numbers and characters. `..<` is inclusive on the first and exclusive on the last. `...` is inclusive on both ends. `0..<5` contains 5 elements, `0...5` contains 6.

The global `stride(from:to:by:)` function lets you iterate over a range with an increase that's not exactly `1`.

```swift
for num in stride(from: 10, to: 50, by: 7) {
  print(num)
}
// prints 10, 17, 24, ... 45
```

`while` loops work just like other languages, a `do-while` loop is actually `repeat-while`.

Loop over a list of items:

```swift
let items = ["Apple", "Orange", "Pear"]
for item in items {
  print(item)
}
// Or with an index
for (idx, item) in items.enumerated() {
  print("\(idx): \(item)")
}
// Or backwards
for item in items.reversed() {
  print(item)
}
```

Lots of other things can be iterated, like dictionaries:

```swift
let thingies = [
  "Blibble": "Blobble",
  "Clickety": "Clack",
  "Wibble": "Wobble"
]
for (key, value) in thingies {
  print("\(key)-\(value)")
}
```

[Adding iterators to your own types]({{ '/examples/iterators' | relative_url }})