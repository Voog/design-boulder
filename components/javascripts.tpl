<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="{{ javascripts_path }}/global-application.min.js"></script>
{% sitejs_include %}

{% if site.search.enabled %}
  <script src="{{ site.static_asset_host }}/libs/edicy-search/latest/edicy-search.js"></script>
  <script>
    var search = new VoogSearch($('.js-search-form').get(0), {
      per_page: 3,
      lang: '{{ page.language_code }}',
      resultsContainer: $('.js-voog-search-modal-inner').get(0),
      sideclick: true,
      mobileModeWidth: 480,
      updateOnKeypress: false
    });
  </script>
{% endif %}

{% unless editmode %}{{ site.analytics }}{% endunless %}
