class Artist < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 2 }

  belongs_to :group, optional: true
  has_many :albums, as: :owner

  def capitalize_name
    self.name = self.name.capitalize
  end
end
