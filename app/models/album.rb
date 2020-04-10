class Album < ApplicationRecord
  has_many :songs
  belongs_to :owner, polymorphic: true
  belongs_to :genre

  def capitalize_name
    self.name = self.name.capitalize
  end
end
