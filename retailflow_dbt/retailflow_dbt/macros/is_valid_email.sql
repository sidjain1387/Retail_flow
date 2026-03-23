{% macro is_valid_email(column_name) %}
    CASE
        WHEN {{ column_name }} LIKE '%@%.%' THEN TRUE
        ELSE FALSE
    END
{% endmacro %}