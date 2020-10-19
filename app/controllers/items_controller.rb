class ItemsController < ApplicationController
  def index
  end

  def show
    @exhibition = Exhibition.find(1)
  end

end
