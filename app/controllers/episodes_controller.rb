class EpisodesController < ApplicationController
  def show
    @user = User.new
    @tv_show = TvShow.find_by id: params[:tv_show_id]
    @season = Season.find_by id: params[:season_id]
    @episode = Episode.find_by id: params[:id]

    @top_new_show = Movie.create_top_new.top_new_show
    @top_new_more = @top_new_show.top_new_more

    @top_score_show = Movie.create_top_score.top_score_show
    @top_score_more = @top_score_show.top_score_more

    @review = Review.new
  end
end
