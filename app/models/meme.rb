class Meme < ApplicationRecord
  belongs_to :user
  validates :description, presence: true, length: { minimum: 3 }
  validates :format, presence: true, inclusion: { in: ["image", "gif", "video"] }
  validates :origin, presence: true, inclusion: { in: ["france", "international", "creole"] }
end
