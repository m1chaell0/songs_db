class Album < ApplicationRecord
  has_many :songs
  belongs_to :owner, polymorphic: true
  belongs_to :genre

  before_create :capitalize_name

  def capitalize_name
    self.name = name.capitalize
  end
end
