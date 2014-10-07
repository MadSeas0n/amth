class SoldItemsController < ApplicationController
  def index
    @sold_items = SoldItem.all
  end

  def new
    @sold_item = SoldItem.new    
  end
end
