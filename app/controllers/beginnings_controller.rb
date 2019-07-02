class BeginningsController < ApplicationController

  def index
    @beginnings = Beginning.all

    render json: @beginnings
  end

  def show
    @beginnings
  end

end
