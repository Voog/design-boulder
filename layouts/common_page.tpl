<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
  <head>
    {% include "html-head" %}
    <meta property="og:url" content="{{ site.url }}">
    <meta property="og:title" content="{{ site.name }}">
    <meta property="og:description" content="{{ page.description }}">
    <meta property="og:image" content="{{ site.url }}{{ photos_path }}/{{ page.data.fbimage }}"><!-- TODO: Add image location data tag -->
  </head>

  <body class="common-page">
    <div class="container js-container">
      {% include "header" %}

      <main class="content" role="main">
        <div class="content-formatted">
          <!-- {% content %} -->

<h1>Form fields</h1>
<p style="color: red">You should never hardcode the forms into the content area. Edicy has a special tool to generate an editable and sendable HTML form. This form is for the styling purpose only.</p>
<form accept-charset="UTF-8" action="/products" enctype="multipart/form-data" method="post"><div style="display:none"><input name="utf8" type="hidden" value="✓"></div>
  <input id="ticket_form_id" name="ticket[form_id]" type="hidden" value="458">
  <div class="form_area">
    <div style="display: none; visibility: hidden;">
      Email again:
      <input id="fci_ticket_email" name="ticket[email]" type="text" value="">
    </div>

    <div class="form_fields">
      <div class="form_field">
        <label for="field_field_1394009481">Small input</label>
        <input class="form_field_textfield" id="field_field_1394009481" name="ticket[data][field_1394009481]" type="text" value="">
      </div>

      <div class="form_field form_field_required">
        <label for="field_field_1394009507844">Medium input</label>
        <input class="form_field_textfield form_field_size_medium" id="field_field_1394009507844" name="ticket[data][field_1394009507844]" type="text" value="">
      </div>

      <div class="form_field">
        <label for="field_field_1394009519550">Large input</label>
        <input class="form_field_textfield form_field_size_large" id="field_field_1394009519550" name="ticket[data][field_1394009519550]" type="text" value="">
      </div>

      <div class="form_field form_field_required">
        <label for="field_field_1394009519256">Checkboxes</label>
        <div>
          <input class="form_field_checkbox" id="field_field_1394009519256_0" name="ticket[data][field_1394009519256][]" type="checkbox" value="Option 1">
          Option 1
        </div>

        <div>
          <input class="form_field_checkbox" id="field_field_1394009519256_1" name="ticket[data][field_1394009519256][]" type="checkbox" value="Option 2">
          Option 2
        </div>

        <div>
          <input class="form_field_checkbox" id="field_field_1394009519256_2" name="ticket[data][field_1394009519256][]" type="checkbox" value="Option 3">
          Option 3
        </div>
      </div>

      <div class="form_field">
        <label for="field_field_1394009518967">Radio buttons</label>
        <div>
          <input class="form_field_radio" id="field_field_1394009518967_0" name="ticket[data][field_1394009518967][]" type="radio" value="Option 1">
          Option 1
        </div>

        <div>
          <input class="form_field_radio" id="field_field_1394009518967_1" name="ticket[data][field_1394009518967][]" type="radio" value="Option 2">
          Option 2
        </div>

        <div>
          <input class="form_field_radio" id="field_field_1394009518967_2" name="ticket[data][field_1394009518967][]" type="radio" value="Option 3">
          Option 3
        </div>
      </div>

      <div class="form_field">
        <label for="field_field_1394009518720">Small select</label>
        <select class="form_field_select" id="field_field_1394009518720" name="ticket[data][field_1394009518720]">
          <option value="Option 1">Option 1</option>
          <option value="Option 2">Option 2</option>
          <option value="Option 3">Option 3</option>
        </select>
      </div>

      <div class="form_field">
        <label for="field_field_1394009518543">Medium select</label>
        <select class="form_field_select form_field_size_medium" id="field_field_1394009518543" name="ticket[data][field_1394009518543]">
          <option value="Option 1">Option 1</option>
          <option value="Option 2">Option 2</option>
          <option value="Option 3">Option 3</option>
        </select>
      </div>

      <div class="form_field">
        <label for="field_field_1394009518344">Large select</label>
        <select class="form_field_select form_field_size_large" id="field_field_1394009518344" name="ticket[data][field_1394009518344]">
          <option value="Option 1">Option 1</option>
          <option value="Option 2">Option 2</option>
          <option value="Option 3">Option 3</option>
        </select>
      </div>

      <div class="form_field form_field_required">
        <label for="field_field_1394009518080">Small textarea</label>
        <textarea class="form_field_textarea" cols="20" id="field_field_1394009518080" name="ticket[data][field_1394009518080]" rows="4" style="height: 98px;"></textarea>
      </div>

      <div class="form_field">
        <label for="field_field_1394009517738">Medium textarea</label>
        <textarea class="form_field_textarea form_field_size_medium" cols="20" id="field_field_1394009517738" name="ticket[data][field_1394009517738]" rows="4" style="height: 98px;"></textarea>
      </div>

      <div class="form_field">
        <label for="field_field_1394009517340">Large textarea</label>
        <textarea class="form_field_textarea form_field_size_large" cols="20" id="field_field_1394009517340" name="ticket[data][field_1394009517340]" rows="4" style="height: 98px;"></textarea>
      </div>

      <div class="form_field form_field_required">
        <label for="field_field_1394009513488">Upload</label>
        <input class="form_field_file" id="field_field_1394009513488" name="ticket[data][field_1394009513488]" type="file">
      </div>
    </div>

    <div class="form_submit">
      <input name="commit" type="submit" value="Submit">
    </div>

  </div>
</form>

        </div>
      </main>

      {% include "footer" %}
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
