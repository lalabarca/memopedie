class Meme < ApplicationRecord
  belongs_to :user
  validates :description, presence: true, length: { minimum: 3 }
  validates :format, presence: true, inclusion: { in: ["image", "gif", "video"] }
  validates :origin, presence: true, inclusion: { in: ["france", "international", "creole"] }

  include PgSearch::Model
  pg_search_scope :search_by_description,
    against: [ :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
