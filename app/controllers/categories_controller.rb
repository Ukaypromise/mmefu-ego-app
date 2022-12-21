class CategoriesController < ApplicationController
    before_action :set_category, only: %i[show destroy]

  before_action :authenticate_user!

  def index
    @categories = Category.all.order(created_at: :DESC)
  end
end