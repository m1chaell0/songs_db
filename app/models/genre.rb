class Genre < ApplicationRecord
  has_many :albums

  def capitalize_name
    self.name = self.name.capitalize
  end
end
