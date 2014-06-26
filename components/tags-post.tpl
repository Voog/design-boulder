{% if editmode %}
  <div class="tags">
    <div class="tags-editor">{% editable article.tags %}</div>
  </div>
{% else %}
  {% unless article.tags == empty %}
    <div class="tags">
      <nav class="menu-tags">
        <div class="tags-icon">
          <svg width="16px" height="16px" xmlns="http://www.w3.org/2000/svg">
            <path d="M15.528,9.104C14.457,8.032,6.425,0,6.425,0H0v6.426l9.103,9.103c0,0,1.07,1.07,2.142,0l4.284-4.283 C15.528,11.245,16.599,10.174,15.528,9.104 M4.283,4.284c-0.591,0.591-1.55,0.592-2.142,0c-0.591-0.591-0.591-1.55,0-2.142 c0.592-0.592,1.55-0.591,2.142,0C4.875,2.734,4.875,3.692,4.283,4.284"></path>
          </svg>
        </div>
        <ul class="menu">
          {% for tag in article.tags %}
            <li class="menu-item"><a class="menu-link" href="{{ site.url }}{{ site.blogs.first.page.path }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %},{% endunless %}</li>
          {% endfor %}
        </ul>
      </nav>
    </div>
  {% endunless %}
{% endif %}
