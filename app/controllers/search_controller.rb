class SearchController < ApplicationController
  before_action :build_user, only: :index
  def index
    redirect_to(request.referer, alert: "Keyword can't be blank") if params[:keyword].blank?
    keyword = params[:keyword]
    @movies = Movie.search_by_any(keyword).uniq
    @tvshows = TvShow.search_by_any(keyword).uniq
  end

  private

  def build_user
    @user = User.new
  end
end
