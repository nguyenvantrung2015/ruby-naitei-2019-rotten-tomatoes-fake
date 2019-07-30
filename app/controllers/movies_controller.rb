class MoviesController < ApplicationController
  before_action :load_movie, only: :show
  before_action :build_user, only: %i(index show)
  def index
    @movies = Movie.create_desc.page(params[:page]).per Settings.paginate_movie

    @top_new_show = Movie.create_top_new.top_new_show
    @top_new_more = @top_new_show.top_new_more

    @top_score_show = Movie.create_top_score.top_score_show
    @top_score_more = @top_score_show.top_score_more
  end

  def show
    @top_new_show = Movie.create_top_new.top_new_show
    @top_new_more = @top_new_show.top_new_more

    @top_score_show = Movie.create_top_score.top_score_show
    @top_score_more = @top_score_show.top_score_more
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
end
