---
layout: default
---

# Team

Meet the volunteers who are making DragonPy 2020 happen.

<ul>
{% for member in site.data.members %}
  <li><a href="{{ member.url }}" target="_blank">{{ member.name }}</a></li>
{% endfor %}
</ul>






