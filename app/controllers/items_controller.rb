class ItemsController < ApplicationController


  def index
  end

  def show
  end

  private
    def exhibition_params
      params.require(:exhibition).permit(:shipping_charges, :shipping_area, :shipping_date, :price, :goods_status, :goods_name, :goods_demonstrate).merge(use_id: current_user.id)
    end
end
