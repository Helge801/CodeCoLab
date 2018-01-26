class ApplicationController < ActionController::Base
  include DeviseWhitelist
  protect_from_forgery with: :exception

  before_action :get_categories

  def get_categories
    @categories = Category.all
  end
end
