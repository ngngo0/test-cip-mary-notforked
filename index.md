---
layout: default
---

# home
<section>
    <aside>
        <ul class="entries">
            {% for post in site.posts %}
              <li>
                <article>
                  <a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">
                    <h3>{{ post.title }}</h3>    
                  </a>
                  <time class="blogdate"> {{ post.date | date: "%d %B %Y" }} </time>
                  <p> {{post.content | strip_html | truncate: 100}} </p>
                </article>
              </li>
            {% endfor %}
              <li>
                <a href="{{ site.url }}{{ site.baseurl }}/posts"> More Posts...</a>
              </li>
        </ul>
        
    </aside>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore   magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla    pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id    est laborum.
    </p>
</section>