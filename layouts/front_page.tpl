<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" %}
  <link rel="stylesheet" href="/assets/admin/tools/0.1.3/edicy-tools.css">
  {% include "bg-picker-variables" %}
</head>

  <body class="front-page">
    <div class="container js-container">
      {% include "header" with "content" %}

      <main class="content js-content" role="main">
        <div class="main-feature">
          <div class="wrap">

            {% if editmode or has_feature_images == true %}
              <div class="feature-left">
                <div class="feature-inner js-feature-inner content-formatted">
                  <div class="feature-image-container js-feature-image-container">
                    {% if editmode %}
                      <div class="feature-image js-feature-image-1" data-image="{{ feature_image_1_url }}" data-dimensions="{{ page.data.feature_image_1.width }},{{ page.data.feature_image_1.height }}" data-position="{{ page.data.feature_image_1.top }},{{ page.data.feature_image_1.left }}"></div>
                    {% else %}
                      {% if has_feature_image_1 == true %}
                        <div class="feature-image" style="background-image: url('{{ feature_image_1_url }}'); top: {{ page.data.feature_image_1.top }}px; left: {{ page.data.feature_image_1.left }}px;"></div>
                      {% endif %}
                    {% endif %}
                  </div>

                  <div class="feature-image-container js-feature-image-container">
                    {% if editmode %}
                      <div class="feature-image js-feature-image-2" data-image="{{ feature_image_2_url }}" data-dimensions="{{ page.data.feature_image_2.width }},{{ page.data.feature_image_2.height }}" data-position="{{ page.data.feature_image_2.top }},{{ page.data.feature_image_2.left }}"></div>
                    {% else %}
                      {% if has_feature_image_2 == true %}
                        <div class="feature-image" style="background-image: url('{{ feature_image_2_url }}'); top: {{ page.data.feature_image_2.top }}px; left: {{ page.data.feature_image_2.left }}px;"></div>
                      {% endif %}
                    {% endif %}
                  </div>
                </div>
              </div>
            {% endif %}

            <div class="{% if editmode or has_feature_images == true %}feature-right{% else %}feature-center{% endif %}">
              <div class="feature-inner content-formatted">
                {% content name="feature_content_right" %}
              </div>
            </div>
          </div>
        </div>

        <div class="summary dark-background">
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

            <section class="quotation">
              <div class="content-formatted">
                {% content name="quotation_content" %}
              </div>
            </section>
          </div>
        </div>

        <div class="contacts">
          <section class="wrap content-formatted js-custom-content-formatted">
            {% content name="contacts_content" %}
          </section>
        </div>

        <div class="map">
          <section class="content-formatted">
            {% content name="map_content" %}
          </section>
        </div>
      </main>


      {% include "footer" %}
    </div>

    {% include "javascripts" %}
    {% include "bg-picker" %}
  </body>
</html>
