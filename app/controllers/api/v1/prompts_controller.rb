class PromptsController < ApplicationController

  def index
    @prompts = Prompt.all

    render json: @prompts
  end
  #new prompt
  def new
    @prompt = Prompt.new
  end

  #create prompt
  def create
    @prompt = Prompt.new(secure_params)
  end

  private
  def secure_params
    params.require(:prompt).permit(:beginning_id, :ending_id)
  end

end
