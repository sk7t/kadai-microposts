class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost

  validates :micropost_id, presence: true
end
