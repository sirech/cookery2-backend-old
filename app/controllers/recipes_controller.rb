class RecipesController < ApplicationController
  def index
    render_prerendered_template('index.html')
  end
end
