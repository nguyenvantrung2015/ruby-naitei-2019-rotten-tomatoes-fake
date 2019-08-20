class NewsController < ApplicationController
  before_action :load_news, except: %i(index new create)
  before_action :build_user, :build_movie_tvshow, except: %i(create update destroy)

  def index
    @all_news = News.update_desc.page(params[:page]).per Settings.news.paginate
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
    params.require(:news).permit News::ATTR
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

  def build_movie_tvshow
    @top_score_movie = Movie.create_top_score
    @top_score_movie_tab = @top_score_movie.take 15

    @top_score_tvshow = TvShow.all.create_top_score
    @top_score_tvshow_tab = @top_score_tvshow.take 15
  end
end
