class Artwork < ApplicationRecord
  belongs_to :artist
  validates_presence_of :name

  has_one_attached :photo
end
