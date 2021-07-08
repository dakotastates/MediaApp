class HomeController < ApplicationController
  include ScraperHelper
  include FilmHelper

  def index
  # byebug
    parse_all
    @films = Film.all
  # byebug
  end

  def show
  end
end
