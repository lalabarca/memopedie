class Meme < ApplicationRecord
  belongs_to :user
  validates :description, presence: true, length: { minimum: 3 }
  validates :type, presence: true, inclusion: { in: %w(Image GIF Vidéo) }
  validates :origin, presence: true, inclusion: { in: %w(France International Créole) }
  validates :year, numericality: { only_integer: true }
end
