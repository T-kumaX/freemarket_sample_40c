class ItemsController < ApplicationController
  before_action :set_item, only: [:show,:buy]
  before_action :set_sell_items, :set_delivery, :set_category_items, only: :show
  before_action :authenticate_user!, only: :new

  def index
    @items = Item.where(params[:id]).order('created_at DESC').limit(4)
  end

  def index
  end

  def new
    @item = Item.new
    @item.build_image
    @item.build_delivery
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def buy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :first_category_id, :second_category_id, :third_category_id, :size_id, :brand_id, :condition, :price, image_attributes: [:image1, :image2, :image3, :image4], delivery_attributes: [:fee, :kind, :area, :delivery_days]).merge(seller_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_sell_items
    @user_sell_items = Item.where(seller_id: @item.seller_id).where.not(id: @item.id).limit(6)
    @previous_item = @user_sell_items.where('id < ?', @item.id).first
    @next_item = @user_sell_items.where('id > ?', @item.id).first
  end

  def set_delivery
    @delivery = Delivery.find_by(item_id: params[:id])
  end

  def set_category_items
    @same_category_items = Item.where(third_category_id: @item.third_category_id).where.not(id: @item.id).limit(6)
  end

end
