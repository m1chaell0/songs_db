class Group < ApplicationRecord
  validates :name, presence: true,
            length: { minimum: 2 }

  has_many :memberships, dependent: :destroy
  has_many :artists, :through => :memberships
  has_many :albums, as: :owner


  before_create :capitalize_name

  def capitalize_name
    self.name = name.capitalize
  end
end
