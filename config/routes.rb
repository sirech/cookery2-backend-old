Rails.application.routes.draw do
  namespace 'rest' do
    resources :recipes, only: %i(index show create)
  end
end
