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
        <header class="content-header">
          <h1>{% contentblock name="slogan" %}{{ "title_goes_here" | lc }}{% endcontentblock %}</h1>
        </header>
        <div class="content-body">{% content %}</div>
      </section>
    </main>
    
    {% include "site-footer" %}
  </section>
  <script>project.initCommonPage();</script>
</body>
</html>