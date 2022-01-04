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

  def templates
    @templates = Meme.where(template: true)
  end

  def images
    @images = Meme.where(format: "image")
  end

  def gifs
    @gifs = Meme.where(format: "gif")
  end

  def videos
    @videos = Meme.where(format: "video")
  end
end
