---
title: Subscripts
example_number: 12
layout: example
in_progress: true
---


```swift
struct Subscriptable {
  private var data = [String: Any]()

  subscript(key: String) -> Any? {
    get {
      return data[key]
    }
    set(newValue) {
      data[key] = newValue
    }
  }
}
```