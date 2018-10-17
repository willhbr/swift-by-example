---
title: Files
example_number: 6
layout: example
---

- reading
- writing
- streaming
- read as binary
- write as binary

> Is there a better way to do this without using Foundation?

Writing a file, from a string.

```swift
import Foundation

let path = URL(fileURLWithPath: "file.txt")
let text = "Some text that you're going to write"
try! text.write(to: path, atomically: true, encoding: .utf8)
```

Also look at: [String.write(to: Target)](https://developer.apple.com/documentation/swift/string/1641490-write), [String.write(to: String)](https://developer.apple.com/documentation/swift/string/1538840-write).

Reading a file to a string. File should be encoded in UTF-8.

```swift
import Foundation

let path = URL(fileURLWithPath: "file.txt")
let text = try! String(contentsOf: path)
print(text)

// Alternatively
let content = try! String(contentsOfFile: "file.txt")
print(content)
```

Relevant methods: [String(contentsOf: URL)](https://developer.apple.com/documentation/swift/string/1779753-init), [String(contentsOfFile: String)](https://developer.apple.com/documentation/swift/string/1780193-init).