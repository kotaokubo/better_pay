class ShopsController < ApplicationController
  # todo アクティブレコード勉強する

  def index
    # @つけるとviewで呼び出す時に使える
    @shops = Shop.all.order(created_at: "desc")
  end

  def search
    @shops = Shop.search(params[:name])
    logger.debug @shops.inspect

    # パラメータがある場合カウントを上げる
    # if (params[:name] != "")
    #   logger.debug @shops.shop_search_counts
    # end
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def create
    # render plain: params[:shop].inspect
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path
    else
      render 'new'
    end
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to shops_path
    else
      render 'edit'
    end
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name)
  end

  def destroy
  end
end
