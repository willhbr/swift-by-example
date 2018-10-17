---
layout: default
---

{% assign sorted = (site.pages | sort: 'example_number') %}
{% for example in sorted %}{% if example.dir == "/examples/" %}
# [{{ example.title }}]({{ example.url | relative_url }})

{{ example.content }}
{% endif %}{% endfor %}