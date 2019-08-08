class TvShowsController < ApplicationController
  before_action :load_tvshow, only: :show
  before_action :build_user, only: %i(index show)

  def index
    @tv_shows = TvShow.create_desc.page(params[:page]).per Settings.tvshows
                                                                   .paginate
  end

  def show
    @tv_shows = TvShow.create_desc
    @top_new_show = Movie.create_top_new.top_new_show
    @top_new_more = @top_new_show.top_new_more

    @top_score_show = Movie.create_top_score.top_score_show
    @top_score_more = @top_score_show.top_score_more
  end

  private

  def load_tvshow
    @tv_show = TvShow.find_by id: params[:id]

    return if @tv_show
    flash[:danger] = t ".not_found"
    redirect_to tv_shows_url
  end

  def build_user
    @user = User.new
  end
end
