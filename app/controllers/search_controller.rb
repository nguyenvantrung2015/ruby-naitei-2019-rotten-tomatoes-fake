class SearchController < ApplicationController
  before_action :build_user, only: :index
  def index
    keyword = params[:keyword]
    @tvshows = TvShow.search(keyword)
    @movies = Movie.search(keyword)
  end

  private

  def build_user
    @user = User.new
  end
end
