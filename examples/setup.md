---
title: Setup
example_number: 1
layout: example
---

Swift is best managed through [swiftenv](https://swiftenv.fuller.li/en/latest/), if you don't have Swift installed yet, [install swiftenv](https://swiftenv.fuller.li/en/latest/installation.html) before going any further. These examples all use Swift {{ site.swift_version }}.

```shell
$ swiftenv install {{ site.swift_version }}
$ swiftenv global {{ site.swift_version }}
```

Then create an executable package:

```shell
$ cd swift-example
$ swift package init --type executable
```

You can build the project with `swift build`, or run it with `swift run`. The default project template is a program that prints "Hello, world!".

```shell
$ swift run
Hello, world!
```

The entry point of the program is in `Sources/swift-example/main.swift`, and is one simple line:

```swift
print("Hello, world!")
```