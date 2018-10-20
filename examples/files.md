---
title: Files
example_number: 6
layout: example
---

Writing a file, from a string.

```swift
import Foundation

let path = URL(fileURLWithPath: "file.txt")
let text = "Some text that you're going to write"
try! text.write(to: path, atomically: true, encoding: .utf8)
```

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

Reading a file into `Data` as bytes.

```swift
import Foundation

let path = URL(fileURLWithPath: "file.txt")
let data = try! Data(contentsOf: path)
print(data) // prints "XX bytes"
```

Writing data to a file.

```swift
import Foundation

let path = URL(fileURLWithPath: "file.txt")
// Create a 100 byte buffer
var data = Data(capacity: 100)
for num in 0..<100 {
  data.append(UInt8(num))
}
try! data.write(to: path)
```

This writes some mostly-printable characters to the file.

Relevant methods: [String(contentsOf: URL)](https://developer.apple.com/documentation/swift/string/1779753-init), [String(contentsOfFile: String)](https://developer.apple.com/documentation/swift/string/1780193-init).
Also look at: [String.write(to: Target)](https://developer.apple.com/documentation/swift/string/1641490-write), [String.write(to: String)](https://developer.apple.com/documentation/swift/string/1538840-write).
