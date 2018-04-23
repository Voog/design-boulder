{% if editmode %}
  <div class="menu-sub">
    <div class="wrap">
      <div class="tags-editor">{% editable article.tags %}</div>
    </div>
  </div>
{% else %}
  {% unless article.tags == empty %}
    {% assign with_submenu = true %}
    <nav class="menu-sub">
      <div class="wrap">
        <ul class="menu">
          {% for tag in article.tags %}
            <li class="menu-item"><a class="menu-link" href="/{{ article.page.path_with_lang }}/tagged/{{ tag.path }}">{{ tag.name }}</a></li>
          {% endfor %}
        </ul>
      </div>
    </nav>
  {% endunless %}
{% endif %}
