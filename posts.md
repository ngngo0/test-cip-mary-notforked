---
layout: default
permalink: /posts/
---

# posts
<article>
<ul class="entries">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">
        <h3>{{ post.title }}</h3>    
      </a>
      <time class="blogdate"> {{ post.date | date: "%d %B %Y" }} </time>
      <p> {{post.content | strip_html | truncate: 250}} </p>
    </li>
  {% endfor %}
</ul>
</article>
