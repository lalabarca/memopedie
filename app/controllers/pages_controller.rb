class PagesController < ApplicationController
  def home
    @memes = Meme.limit(6).order(created_at: :desc)
    @memes_fr = Meme.limit(4).where(origin: "france")
  end
end
