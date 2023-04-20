class Admin::ReservesController < ApplicationController
  def index
    @reserves = Reserve.all
  end

  def show
  end

  def edit
  end
end
