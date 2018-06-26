require_relative '../rails_helper'
require 'pact/provider/rspec'

require_relative 'recipes'

Pact.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

Pact.service_provider 'Backend' do
  honours_pact_with 'Provider' do
    pact_uri 'https://raw.githubusercontent.com/sirech/cookery2-frontend/master/pacts/react-backend.json'
  end
end

Pact.provider_states_for 'React' do
  provider_state 'i have some recipes' do
    set_up do
      recipes.each do |recipe|
        steps = recipe.delete(:steps) || []
        quantities = recipe.delete(:quantities) || []
        r = build(:recipe, **recipe)

        steps.each do |step|
          r.steps << build(:step, **step)
        end

        quantities.each do |quantity|
          quantity[:ingredient] = Ingredient.where(name: quantity.delete(:name)).first_or_create
          r.quantities << build(:quantity, **quantity)
        end

        r.save!
      end
    end
  end

  provider_state 'i am logged in' do
    set_up do
    end
  end
end
