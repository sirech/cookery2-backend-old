Rails.application.routes.draw do
  get '/', to: redirect('/recipes')

  namespace 'rest' do
    resources :recipes, only: %i(index show create)
  end

  # Send all urls inside recipes to the index, so that react can render it
  resources :recipes, only: %i(index)
  get 'recipes/*rest', to: 'recipes#index'
end
