class MainController < ApplicationController
  def index
    @posts = BlogPost.all.limit(6)
    @index = IndexPage.first
    @items = ShopItem.all
    @blocks = PromoBlock.all

  end

  def static
  end

end
