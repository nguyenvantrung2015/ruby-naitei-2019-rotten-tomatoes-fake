class StaticPagesController < ApplicationController
  def home
    @tv_shows = TvShow.create_desc
    @movies = Movie.create_desc
  end

  def help; end
end
