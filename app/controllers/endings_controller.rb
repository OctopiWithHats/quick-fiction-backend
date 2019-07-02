class EndingsController < ApplicationController

  def index
    @endings = Ending.all

    render json: @endings
  end

  def show
    @endings
  end

end
