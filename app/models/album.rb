class Album < ApplicationRecord
  has_many :songs
  belongs_to :owner, polymorphic: true
  belongs_to :genre
end
