{% macro purchase_cost(qty, price) %}
    {{qty}}* {{price}}
{% endmacro %}