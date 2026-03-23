{% macro clean_text(column_name) %}
    INITCAP(TRIM({{ column_name }}))
{% endmacro %}