<!DOCTYPE html>
<html lang="{{ page.language_code }}" class="full-height">
<head>
  {% include "html-head" %}
</head>

<body>
  <section class="site-content cfx">
    {% include "site-header" %}

    <main class="page-content cfx" role="main">
      <section class="content-container">
        <div class="articles-container">
          <span id="loading-status">Loading ...</span>
        </div>
        <div id="pagination" class="page-numbers"></div>
      </section>
    </main>
    
    {% include "site-footer" %}
    <script>var langCode = "{{ page.language_code }}";</script>
    <script src="{{ javascripts_path }}/jquery.articlePages.js"></script>
    <script type="text/html" id="article-template">
      <article class="post listing">
        <header class="post-header">
          <h1 class="post-title"><a href="[[url]]">[[title]]</a></h1>
          <time datetime="[[dateAttr]]" class="post-date">[[date]]</time>
        </header>
        <section class="post-excerpt">[[excerpt]]</section>
      </article>
    </script>
    
    <script type="text/javascript">
      $('.articles-container').articlePages({
          nr_articles: {{ articles.size }},
          older: "Next",
          newer: "Previous"
      });

      $('.articles-container').on({
        'articles.loading': function() { $('#loading-status').html('Loading ...'); },
        'articles.loaded': function() { $('#loading-status').html(''); }
      });
    
      $('#pagination').append($('.articles-container').articlePages('getPageLinks'));
    </script>
  </section>
  <script>project.initCommonPage();</script>
</body>
</html>