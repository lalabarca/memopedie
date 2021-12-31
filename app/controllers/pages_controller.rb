class PagesController < ApplicationController
  def home
    @memes = Meme.order(created_at: :desc).limit(6)
    @memes_fr = Meme.where(origin: "France")
  end
end
