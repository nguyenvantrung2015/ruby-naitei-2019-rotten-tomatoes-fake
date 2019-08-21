class EpisodesController < ApplicationController
  before_action :load_episode, :build_movie_tvshow, only: :show
  def show; end

  private

  def load_episode
    @episode = Episode.find_by id: params[:id]

    if @episode
      @review = Review.new
      @critic_score = @episode.score :critic
      @audience_score = @episode.score :normal
      @celebrities = Episode.celebrities_list @episode.id
      @reviewed = current_user.reviewed? @episode.medium if user_signed_in?
    else
      flash[:danger] = t ".not_found"
      redirect_to episodes_url
    end
  end

  def build_movie_tvshow
    @top_score_movie = Movie.create_top_score
    @top_score_movie_tab = @top_score_movie.take Settings.tab_show

    @top_score_tvshow = TvShow.all.create_top_score
    @top_score_tvshow_tab = @top_score_tvshow.take Settings.tab_show
  end
end
