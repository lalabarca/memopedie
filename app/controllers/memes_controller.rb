class MemesController < ApplicationController
  def index
    if params[:query].present?
      @memes = Meme.search_by_description(params[:query])
    else
      @memes = Meme.order(created_at: :desc)
    end
  end

  def show
    @meme = Meme.find(params[:id])
  end
end
