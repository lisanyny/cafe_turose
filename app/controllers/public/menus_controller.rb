class Public::MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def special
  end

  def food
  end

  def dessert
  end

  def drink
  end
end
