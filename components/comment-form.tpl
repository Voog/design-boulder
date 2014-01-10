<div id="add-comment-wrap"{% unless comment.valid? %} class="form_with_errors"{% endunless %}>
  {% commentform %}
    <div class="form_area">
      <div class="form_fields">
        <div class="form_field comment_form_field{% unless comment.valid? %} form_field_with_errors{% endunless %}">
          <label for="commentform-name">
            {% unless comment.valid? %}
              <span class="form_field_error">
                {% for error in comment.errors %}
                  {% if forloop.index == 1 %}
                    {{ error | lc }}
                  {% endif %}
                {% endfor %}
              </span>
            {% endunless %}
          </label>
          <input type="text" class="form_field_textfield" id="commentform-name" value="{{ comment.author }}" name="comment[author]" placeholder="{{ "name" | lc }}">
        </div>
        <div class="form_field comment_form_field{% unless comment.valid? %} form_field_with_errors{% endunless %}">
          <label for="commentform-email">
            {% unless comment.valid? %}
              <span class="form_field_error">
                {% for error in comment.errors %}
                  {% if forloop.index == 2 %}
                    {{ error | lc }}
                  {% endif %}
                {% endfor %}
              </span>
            {% endunless %}
          </label>
          <input type="text" class="form_field_textfield" id="commentform-email" value="{{ comment.author_email }}" name="comment[author_email]" placeholder="{{ "email" | lc }}">
        </div>
        <div class="form_field{% unless comment.valid? %} form_field_with_errors{% endunless %}">
          <label for="commentform-body">
            {% unless comment.valid? %}
              <span class="form_field_error">
                {% for error in comment.errors %}
                  {% if forloop.index == 3 %}
                    - {{ error | lc }}
                  {% endif %}
                {% endfor %}
              </span>
            {% endunless %}
          </label>
          <textarea class="form_field_textarea form_field_size_large" id="commentform-body" name="comment[body]" placeholder="{{ "comment" | lc }}">{{ comment.body }}</textarea>
        </div>
      </div>
      <div class="form_submit">
        <input type="submit" value="{{ "submit" | lc }}">
      </div>
    </div>
  {% endcommentform %}
</div>