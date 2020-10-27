# こちらは出品動作確認後に削除 堅田

class ExhibitionsController < ApplicationController

  def index
    @exhibitions = Exhibition.includes(:images).order('created_at DESC')
  end

  def new
    @exhibition = Exhibition.new
    @exhibition.images.new
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)
    # メソッドの最後にsave！と感嘆符をつけることで、例外処理時にエラー文を表示する、通常ではnilとなる
    if @exhibition.save!
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  
  def exhibition_params
    params.require(:exhibition).permit(:shipping_charges, :shipping_area, :shipping_date, :price, :goods_status, :goods_name, :goods_demonstrate, images_attributes: [:image])
  end
end
