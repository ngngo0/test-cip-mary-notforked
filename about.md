---
layout: default
permalink: /about/
---

# about
<section>
    <ul class="team_card_list">
      {% for member in site.team_members %}
        <li class="team_card">
            <h3>
                <a href="{{ site.url }}{{ site.baseurl }}{{ member.url }}"> 
                    {{member.name}} 
                </a>
            </h3>
            <img src="{{ site.url }}{{ site.baseurl }}{{member.picture}}" alt="member picture">
            <p> {{member.content | strip_html | truncate: 100}} </p>
        </li>
      {% endfor %}
    </ul>
</section>