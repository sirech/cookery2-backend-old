task status: :environment do
  raise if Recipe.count.zero?
end
