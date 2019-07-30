class NewsController < ApplicationController
  before_action :load_news, except: %i(index new create)
  before_action :build_user, except: %i(create update destroy)

  def index
    @all_news = News.create_desc.page(params[:page]).per Settings.news.paginate

    @tv_shows = TvShow.create_desc.page(params[:page]).per Settings.tvshows.paginate

    @top_new_show = Movie.create_top_new.top_new_show
    @top_new_more = @top_new_show.top_new_more

    @top_score_show = Movie.create_top_score.top_score_show
    @top_score_more = @top_score_show.top_score_more
  end

  def new
    @news = News.new
  end

  def create
    @news = current_user.news.build news_params

    if @news.save
      flash[:success] = t ".create_success"
      redirect_to @news
    else
      flash[:danger] = t ".create_failed"
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @news.update_attributes news_params
      flash[:success] = t ".update_success"
      redirect_to @news
    else
      flash[:danger] = t ".update_fail"
      render :edit
    end
  end

  def destroy
    if @news.destroy
      flash[:success] = t ".delete_success"
    else
      flash[:danger] = t ".delete_failed"
    end
    redirect_to news_index_path
  end

  private

  def news_params
    params.require(:news).permit :content
  end

  def load_news
    @news = News.find_by id: params[:id]

    return if @news
    flash[:danger] = t ".not_found"
    redirect_to news_index_path
  end

  def build_user
    @user = User.new
  end
end
