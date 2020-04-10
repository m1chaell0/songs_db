class Song < ApplicationRecord
  belongs_to :album

  def capitalize_name
    self.name = self.name.capitalize
  end
end
