---
layout: default
---

Inspired by [Go by Example](https://gobyexample.com). Aimed to give an overview for common things in the standard library and Foundation. All examples should work on Linux using the latest version of the Swift compiler, this site was generated last for Swift {{ site.swift_version }}. Documentation for macOS- or iOS-specific APIs is a non-goal.

{% assign sorted = (site.pages | sort: 'example_number') %}
{% for example in sorted %}{% if example.dir == "/examples/" %}
{% if example.in_progress %}
+ <span class="badge">WIP</span> [{{ example.title }}]({{ example.url | relative_url }})
{% else %}
+ [{{ example.title }}]({{ example.url | relative_url }})
{% endif %}
{% endif %}{% endfor %}

---

[One page]({{ '/onepage' | relative_url }})