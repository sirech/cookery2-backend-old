if step.related
  json.isRecipe true
  json.id step.related.id
  json.name step.related.name
else
  json.isRecipe false
  json.description step.description
end

json.extract! step, :duration
