<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" %}
</head>

<body class="blog-page content-page{% if site.search.enabled %} search-enabled{% endif %}{% if editmode or site.has_many_languages? %} multilingual{% endif %}">
  <div class="container">
    {% include "header" %}
    {% include "tags-blog" %}

    <main class="content js-content" role="main">
      <div class="wrap">
        {% if editmode %}<div class="post-add-btn">{% addbutton %}</div>{% endif %}

        <section class="blog-articles">
          <span class="loading-status js-loading-status">
            <div class="loader">
              <div class="loader-cube-1"></div>
              <div class="loader-cube-2"></div>
            </div>
          </span>
        </section>

        {% if articles.size > 3 %}
          <nav class="menu-pagination"></nav>
        {% endif %}
      </div>
    </main>

    {% include "footer" %}
  </div>

  {% include "javascripts" %}
  {% include "bg-picker" %}

  <script>var langCode = "{{ page.language_code }}";</script>
  <script src="{{ javascripts_path }}/article-pages.js?1"></script>
  <script type="text/html" id="article-template">
    <article class="post">
      <header class="post-header">
        <div class="post-header-top">
          <h2 class="post-title"><a href="[[url]]">[[title]]</a></h2>
          <time class="post-date" datetime="[[dateAttr]]">[[date]]</time>
        </div>
      </header>

      <div class="post-content">
        <div class="post-excerpt content-formatted">[[excerpt]]</div>
      </div>
    </article>
  </script>

  <script>
    $('.blog-articles').articlePages({
        nr_articles: {{ articles.size }},
        // TODO: Needs language based values
        older: "Next",
        newer: "Previous"
    });

    $('.blog-articles').on({
      'articles.loading': function() { $('js-loading-status').html('<div class="wrap"><div class="loader"><div class="loader-cube-1"></div><div class="loader-cube-2"></div></div></div>'); },
      'articles.loaded': function() { $('js-loading-status').html(''); }
    });

    $('.menu-pagination').append($('.blog-articles').articlePages('getPageLinks'));

    $(document).ready(function() {
      currentUrl = window.location.href;
      blogUrl = '{{ site.url }}{{ page.path }}';
      if (currentUrl === blogUrl) {
        $('.js-tags-all').addClass('active');
      };
    });

    site.initBlogPage();
  </script>
</body>
</html>
