class Artist < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 2 }

  has_many :memberships, dependent: :destroy
  has_many :groups, :through => :memberships
  has_many :albums, as: :owner

  before_create :capitalize_name

  def capitalize_name
    self.name = name.capitalize
  end

  artist = Artist.find(1)
  group = Group.find(1)
end
