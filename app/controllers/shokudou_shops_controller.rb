class ShokudouShopsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @shokudou_shops = ShokudouShop.all
  end

  def show
    @shokudou_shop = ShokudouShop.find(params[:id])
    @review = Review.new
  end
end
