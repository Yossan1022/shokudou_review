class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @shokudou_shop = ShokudouShop.find(params[:shokudou_shop_id])
    @reviews = @shokudou_shop.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to shokudou_shop_reviews_path(@review.shokudou_shop)
    else
      @shokudou_shop = ShokudouShop.find(params[:shokudou_shop_id])
      render "shokudou_shops/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:shokudou_shop_id, :score, :content)
  end
end