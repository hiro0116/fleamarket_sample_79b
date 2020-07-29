class ItemsController < ApplicationController
  def index
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
  end

end
