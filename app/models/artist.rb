class Artist < ApplicationRecord
  belongs_to :group
  has_many :albums, as: :owner

  def capitalize_name
    self.name = self.name.capitalize
  end
end
