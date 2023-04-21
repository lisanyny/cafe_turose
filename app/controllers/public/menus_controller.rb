class Public::MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def special
    @menus = Menu.where(genre: '1')
  end

  def food
    @menus = Menu.where(genre: '2')
  end

  def dessert
  end

  def drink
  end
end
