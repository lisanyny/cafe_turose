class Admin::MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.save
    redirect_to admin_menus_path
  end

  def show
  end

  def edit
  end

  private

  def menu_params
    params.require(:menu).permit(:item, :image_id, :introduction, :price, :is_active, :genre)
  end

end
