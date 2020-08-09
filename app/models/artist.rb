class Artist < User
  validates_presence_of :first_name, :last_name

  has_many :artworks, dependent: :destroy
  has_one_attached :profile_picture

  # state_machine
  # pending
  # active
  # inactive
end
