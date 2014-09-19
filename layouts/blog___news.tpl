<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" %}
</head>

<body class="blog-page content-page{% if editmode or site.has_many_languages? %} multilingual{% endif %}">
  <div class="container">
    {% include "header" %}
    {% include "tags-blog" %}

    <main class="content" role="main">
      <div class="wrap">
        {% if editmode %}<div class="post-add-btn">{% addbutton %}</div>{% endif %}

        <section class="blog-articles js-blog-articles"></section>
        <div class="loading-status js-loading-status"></div>

        {% if articles.size > 3 %}
          <div class="js-menu-pagination-wrap"></div>
        {% endif %}
      </div>
    </main>

    {% include "footer" %}
  </div>

  {% include "javascripts" %}
  <script>var langCode ='{% if page.language_code == 'zh'%}zh-cn{% else %}{{ page.language_code }}{% endif %}';</script>
  <script src="{{ javascripts_path }}/blog___news.js"></script>

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
    $('.js-blog-articles').on({
      'articles.loading': function() {
        setTimeout(function() {
          $('.js-loading-status').html('<div class="loader"><div class="loader-cube-1"></div><div class="loader-cube-2"></div></div>');
        }, 1500);
      },
      'articles.loaded': function() {
        $('.js-loading-status').html();
      }
    });

    $('.js-blog-articles').articlePages({
        nr_articles: {{ articles.size }},
        older: '{{ 'next' | lc }}',
        newer: '{{ 'previous' | lc }}',
        page_id: {{ page.id }}{% if tags %},
        tags: ['{{ tags.first.name }}']{% endif %}
    });

    $(document).ready(function() {
      $('.js-menu-pagination-wrap').append($('.js-blog-articles').articlePages('getPageLinks'));

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
