json.array! quantities do |quantity|
  json.name quantity.ingredient.name
  json.unit quantity.unit.pluralize(quantity.amount)
  json.amount quantity.amount
end
