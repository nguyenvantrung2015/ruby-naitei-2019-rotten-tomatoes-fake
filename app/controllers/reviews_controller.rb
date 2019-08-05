class ReviewsController < ApplicationController
  before_action :load_review, except: %i(index new create)
  before_action :build_user, except: %i(create update destroy)

  def index
    @reviews = Review.create_desc.page(params[:page]).per Settings.paginate
  end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.build review_params

    if @review.save
      flash[:success] = t ".create_success"
    else
      flash[:danger] = t ".create_failed"
    end
    redirect_back(fallback_location: root_path)
  end

  def show; end

  def edit; end

  def update; end

  def destroy
    if @review.destroy
      flash[:success] = t ".delete_success"
    else
      flash[:danger] = t ".delete_failed"
    end
    redirect_to request.referrer
  end

  private

  def review_params
    params.require(:review).permit Review::ATTR
  end

  def load_review
    @review = Review.find_by id: params[:id]

    return if @review
    flash[:danger] = t ".not_found"
    # redirect_to reviews_url
  end

  def build_user
    @user = User.new
  end
end
