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
    @menu = Menu.find(params[:id])
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.update(menu_params)
    redirect_to admin_menus_path
  end

  private

  def menu_params
    params.require(:menu).permit(:item, :image, :introduction, :price, :is_active, :genre)
  end

end
