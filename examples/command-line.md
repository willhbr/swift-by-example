---
title: Command Line
example_number: 7
layout: example
---

Command line arguments to the program are available in the `CommandLine` object. It's worth noting that the arguments are mutable - you can add or remove arguments while the program is running.

```swift
let args = CommandLine.arguments
let program = args[0]
let rest = args.dropFirst()

print("Running \(program), with args: \(rest)")
```

The first argument is the name of the running program, followed by the arguments passed by the user.

```shell
$ swift example.swift some-arg "Passed as string"
Running example.swift, with args: ["some-arg", "Passed as string"]
```

You can read from standard input using the `readLine()` function:

```swift
print("Write something:")
if let input = readLine() {
  print("You wrote: '\(input)'")
}
```

```shell
$ swift example.swift
Write something: This is what I typed!
You wrote: 'This is what I typed!'
```