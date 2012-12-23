class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @search = User.search(params[:q])
    @users = @search.result
  end
  
end
