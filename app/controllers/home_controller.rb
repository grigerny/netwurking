class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @bizcards = Bizcard.all
  end
end
