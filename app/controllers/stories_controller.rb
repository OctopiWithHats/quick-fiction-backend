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

  #edit and update methods
  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    @story.update(likes: params[:likes])
  end

  private
  def secure_params
    params.require(:story).permit(:beginning_id, :ending_id, :author, :text, :likes)
  end

end
