---
layout: page
title: Archive
permalink: /Archives/
---
<section id="archive">
  {%for post in site.posts %} 
    {% unless post.next %}
      <h3>{{ post.date | date: '%Y' }}</h3>
      <ul class="this">
    {% else %}
      {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
      {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
      {% if year != nyear %}
        </ul>
        <h3>{{ post.date | date: '%Y' }}</h3>
        <ul class="past">
      {% endif %}
    {% endunless %}
      <li>
        <b><a href="{{ post.url }}">{{ post.title }}</a></b> publié le <time>{{ post.date | date:"%d %b"}}</time>
      </li>
  {% endfor %}
  </ul>
</section>
