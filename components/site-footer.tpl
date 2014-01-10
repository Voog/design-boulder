<footer class="site-footer cfx">
  <section class="container{% if editmode %} editmode{% endif %}">
    <section class="footer-left">
      {% contentblock name="footer-title" xpage="true" %}{{ site.header }}{% endcontentblock %}
    </section>
    <section class="footer-right">
      {% xcontent name="footer" %}
    </section>
  </section>
</footer>
{% include "javascripts" %}