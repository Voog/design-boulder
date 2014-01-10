<!DOCTYPE html>
  <html lang="{{ page.language_code }}" class="front-page">
<head>
    {% include "html-head" %}
</head>

<body>
  <section class="site-content cfx">
    {% include "site-header" %}

    <main class="page-content cfx" role="main">
      <section class="main-element container cfx">
        <div class="main-element-left half-container cfx">
          {% contentblock name="element-left-body cfx" %}
            <img src="/photos/single-image-1.jpg" alt="" width="448" height="448" align="left">
            <img src="/photos/single-image-2.jpg" alt="" width="448" height="448" align="left">
          {% endcontentblock %}
        </div>
        
        <div class="main-element-right half-container cfx">
          {% contentblock name="element-right-body" %}
            <h2>Fresh pumpkin Gnocchi with oil and sage</h2>
            <p>A great dish for the end of the summer, using fresh grown pumpkins and garlic and served with the best crusty bread you can get you hands on.</p>
            <a href="#nothing">See our other items</a>
          {% endcontentblock %}
        </div>
      </section>

      <section class="summary cfx">
        <div class="container">
          <section class="latest-news half-container">
            <div class="latest-news-inner">
              <h3>{{ "latest_news" | lc }}</h3>
                {% for article in site.latest_articles limit:3 %}
                  <h2><a href="{{ article.url }}">{{ article.title }}</a></h2>
                  <time datetime="2013-11-25" class="post-date">{{ article.created_at | date : "%B %d, %Y" }}</time>
                {% endfor %}
              </div>
          </section>
          
          <section class="testimonial half-container cfx">
            {% contentblock name="testimonial-body" %}
              <p>«One of the best cappuccinos in town - each one made with love and a nice design that shows that care. Very friendly place and a nice local vibe has turned me into a regular customer.»</p>
              <p>- Andrew Ludwig</p>
            {% endcontentblock %}
          </section>
        </div>
      </section>

      <section class="contacts container">
        {% contentblock name="contacts-body" %}
          <span>1521 Pearl ST, Boulder, CO    |    hello@bouldercafe.com    |    (303) 449-5173</span>
          <br>
          <span>We are open Monday to Friday from 9am to 10pm</span>
        {% endcontentblock %}
      </section>

      <section class="map cfx">
        {% contentblock name="map-body" %}
          <iframe src="http://maps.google.com/maps?f=q&amp;hl=en&amp;q=boulder@40.0149856,-105.27054559999999&amp;ie=UTF8&amp;ll=40.0149856,-105.27054559999999&amp;z=12&amp;iwloc=A&amp;output=embed" width="650" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="line-height: 1.4em; display: inline; width: 100%; height: 227px;"></iframe>
        {% endcontentblock %}
      </section>
    </main>
    
    {% include "site-footer" %}
  </section>
  <script>project.initFrontPage();</script>
</body>
</html>