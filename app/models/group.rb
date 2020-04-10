class Group < ApplicationRecord
  validates :name, presence: true,
            length: { minimum: 2 }

  before_create :capitalize_name

  def capitalize_name
    self.name = name.capitalize
  end

  has_many :artists
  has_many :albums, as: :owner



end
