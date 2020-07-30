class Artist < User
  validates_presence_of :first_name, :last_name

  has_many :artworks
end
