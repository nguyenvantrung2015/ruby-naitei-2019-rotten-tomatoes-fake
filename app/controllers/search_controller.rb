class SearchController < ApplicationController
  before_action :build_user, only: :index
  before_action :build_movie_tvshow, only: %i(index show)
  def index
    redirect_to(request.referer, alert: t("kw_blank")) if params[:keyword].blank?
    keyword = params[:keyword]
    @tvshows = TvShow.search keyword
    @movies = Movie.search keyword
  end

  private

  def build_user
    @user = User.new
  end

  def build_movie_tvshow
    @top_score_movie = Movie.create_top_score
    @top_score_movie_tab = @top_score_movie.take Settings.tab_show

    @top_score_tvshow = TvShow.all.create_top_score
    @top_score_tvshow_tab = @top_score_tvshow.take Settings.tab_show
  end
end
