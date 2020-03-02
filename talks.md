---
layout: default
---

# Talks, talks and more talks!

<div class="grid-x grid-padding-x align-center-middle">
{% for talk in site.talks %}
    <div class="small-6 large-3 cell talk__cell">
        <a href="{{ talk.url }}" target="_blank"><img class="talk__avatar" src="/assets/img/speakers/{{ talk.image }}" alt="{{ speaker.speaker }}" /></a>
        <a class="talk__name" href="{{ talk.url }}" target="_blank">{{ talk.speaker }}: {{ talk.title }}</a>
    </div>
{% endfor %}
</div>
