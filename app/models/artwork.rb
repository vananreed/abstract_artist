class Artwork < ApplicationRecord
  belongs_to :artist
  validates_presence_of :name, :photo

  has_one_attached :photo
end
