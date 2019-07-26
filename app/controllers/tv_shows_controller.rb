class TvShowsController < ApplicationController
  before_action :load_tvshow, except: %i(index new create)
  before_action :build_user, except: %i(create update destroy)
  def index
    @tv_shows = TvShow.create_desc.page(params[:page]).per Settings.tvshows
                                                                   .paginate
  end

  def new
    @tv_show = TvShow.new
  end

  def create
    @tv_show = TvShow.new tv_show_params

    if @tv_show.save
      flash[:success] = t ".create_success"
      redirect_to @tv_show
    else
      flash[:danger] = t ".create_failed"
      render :new
    end
  end

  def show
    @tv_shows = TvShow.create_desc
    @movies_top_new = Movie.create_top_new
    @movies_top_score = Movie.create_top_score
  end

  def edit; end

  def update
    if @tv_show.update_attributes tv_show_params
      flash[:success] = t ".update_success"
      redirect_to @tv_show
    else
      flash[:danger] = t ".update_fail"
      render :edit
    end
  end

  def destroy
    if @tv_show.destroy
      flash[:success] = t ".delete_success"
    else
      flash[:danger] = t ".delete_failed"
    end
    redirect_to tv_shows_url
  end

  private

  def tv_show_params
    params.require(:tv_show).permit TvShow::ATTR
  end

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
