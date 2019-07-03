class StoriesController < ApplicationController

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
    @story = Story.create(secure_params)
    render json:@story
  end

  private
  def secure_params
    params.require(:story).permit(:prompt_id, :text)
  end

end
