<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head>
  {% include "html-head" %}
  <meta property="og:url" content="{{ site.url }}">
  <meta property="og:title" content="{{ site.name }}">
  <meta property="og:description" content="{{ page.description }}">
  <meta property="og:image" content="{{ site.url }}{{ photos_path }}/{{ page.data.fbimage }}"><!-- TODO: Add image location data tag -->
</head>

<body class="front-page">
  <div class="container js-container">
    {% include "header" %}

    <main class="content" role="main">
      <div class="main-feature">
        <div class="wrap">
          <section class="feature-left content-formatted">
            {% content name="feature_content_left" %}
          </section>
          <section class="feature-right content-formatted">
            {% content name="feature_content_right" %}
          </section>
        </div>
      </div>

      <div class="summary">
        <div class="wrap">
          <section class="blog">
            <div class="blog-title">{{ "latest_news" | lc }}</div>
            {% for article in site.latest_articles limit:3 %}
              <h2 class="post-title"><a href="{{ article.url }}">{{ article.title }}</a></h2>
              <time class="post-date" datetime="{{ article.created_at | date : "%Y-%m-%d" }}">{{ article.created_at | date : "%B %d, %Y" }}</time>
            {% endfor %}
          </section>
          <section class="quotation content-formatted">
            {% content name="quotation_content" %}
          </section>
        </div>
      </div>
    </main>
  </div>

  {% include "javascripts" %}
  <script src="{{ javascripts_path }}/autogrow.js"></script>
  <script src="{{ javascripts_path }}/ajaxForm.js"></script>
  <script>
    $('.form_field_textarea').autogrow();
    $(".content-formatted form").edicyAjaxForm();
  </script>
</body>
</html>
