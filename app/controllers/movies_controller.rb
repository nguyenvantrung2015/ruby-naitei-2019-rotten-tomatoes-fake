class MoviesController < ApplicationController
  include ReviewsHelper
  before_action :load_movie, only: :show
  before_action :build_user, :build_movie_tvshow, only: %i(index show)

  def index
    @movies = Movie.create_desc.page(params[:page]).per Settings.paginate
  end

  def show
    @review = Review.new

    @critic_score = @movie.critic_score
    @critic_score = @critic_score.zero? ? "N/A" : @critic_score.round(1)

    @audience_score = @movie.audience_score
    @audience_score = @audience_score.zero? ? "N/A" : @audience_score.round(1)
  end

  private

  def load_movie
    @movie = Movie.find_by id: params[:id]

    return if @movie
    flash[:danger] = t ".not_found"
    redirect_to movies_url
  end

  def build_user
    @user = User.new
  end

  def build_movie_tvshow
    @top_score_movie = Movie.create_top_score
    @top_score_movie_tab = @top_score_movie.take 15

    @top_score_tvshow = TvShow.all.create_top_score
    @top_score_tvshow_tab = @top_score_tvshow.take 15
  end
end
