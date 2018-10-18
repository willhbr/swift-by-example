---
title: Dynamic Member Lookup
example_number: 11
layout: example
---

This is a new feature in Swift 4.2, and can be used to make your own types respond to arbitrary methods at run time, making it easier to work with dynamic data from APIs.

`@dynamicMemberLookup` can only be applied to the actual type declaration, not to an extension on an existing type.

```swift
@dynamicMemberLookup
struct Dict {
  private var data = [String: Any]()

  subscript(dynamicMember member: String) -> Any? {
    get {
      return data[member]
    }
    set(newValue) {
      data[member] = newValue
    }
  }
}

var hash = Dict()
hash.foo = "bar"
hash.key = "value"

print(hash)
```