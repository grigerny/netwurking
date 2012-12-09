class HomeController < ApplicationController
  def index
    @bizcards = Bizcard.all
  end
end
