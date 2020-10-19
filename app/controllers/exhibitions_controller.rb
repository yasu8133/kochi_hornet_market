class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.includes(:images).order('created_at DESC')
  end

  def new
    @exhibition = Exhibition.new
    @exhibition.image.new
  end

  def show
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)
  end

  private
  def exhibition_params
    params.require(:exhibition).permit(:category_id, :shipping_charges, :shipping_area, :shipping_date, :price, :goods_status, :goods_name, :goods_demonstrate).merge(user_id: current_user.id)
  end
end
