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

      {% comment %}
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
              <h1 class="blog-title">{{ "latest_news" | lc }}</h1>
              {% for article in site.latest_articles limit:3 %}
                <article class="post">
                  <h2 class="post-title"><a href="{{ article.url }}">{{ article.title }}</a></h2>
                  <time class="post-date" datetime="{{ article.created_at | date : "%Y-%m-%d" }}">{{ article.created_at | date : "%B %d, %Y" }}</time>
                </article>
              {% endfor %}
            </section>

            <section class="quotation content-formatted">
              {% content name="quotation_content" %}
            </section>
          </div>
        </div>

        <div class="contacts">
          <section class="wrap content-formatted">
            {% content name="contacts_content" %}
          </section>
        </div>

        <div class="map">
          <!-- {% content name="map_content" %}  -->
          <!-- TODO: Replace content area -->
          <section class="content-formatted">
            <iframe src="http://maps.google.com/maps?f=q&amp;hl=en&amp;q=boulder@40.0149856,-105.27054559999999&amp;ie=UTF8&amp;ll=40.0149856,-105.27054559999999&amp;z=12&amp;iwloc=A&amp;output=embed" width="650" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="line-height: 1.4em; display: block; width: 100%; height: 300px;"></iframe>
          </section>
        </div>
      </main>

      {% include "footer" %}
      {% endcomment %}
    </div>

    {% include "javascripts" %}
    {% include "bg-picker" %}
  </body>
</html>
