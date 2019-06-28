class Api::V1::StoriesController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    @stories = Story.all

    render json: @stories
  end

  def show
    @stories
  end
  #new story
  def new
    @story = Story.new
  end

  #create story
  def create
    @story = Story.new(secure_params)
  end

  private
  def secure_params
    params.require(:story).permit(:prompt_id, :user_id)
  end

end
