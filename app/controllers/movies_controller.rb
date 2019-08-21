class MoviesController < ApplicationController
  include ReviewsHelper
  before_action :load_movie, only: :show
  before_action :build_movie_tvshow, only: %i(index show)

  def index
    @movies = Movie.create_desc.page(params[:page]).per Settings.paginate
  end

  def show
    @review = Review.new

    @critic_score = @movie.score(:critic)
    @audience_score = @movie.score(:normal)
    @celebrities = Movie.celebrities_list @movie.id
  end

  private

  def load_movie
    @movie = Movie.find_by id: params[:id]

    return if @movie
    flash[:danger] = t ".not_found"
    redirect_to movies_url
  end

  def build_movie_tvshow
    @top_score_movie = Movie.create_top_score
    @top_score_movie_tab = @top_score_movie.take Settings.tab_show

    @top_score_tvshow = TvShow.create_top_score
    @top_score_tvshow_tab = @top_score_tvshow.take Settings.tab_show
  end
end