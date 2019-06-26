class HomeController < ApplicationController
  def index
    @tipos = Kind.all
  end
end
