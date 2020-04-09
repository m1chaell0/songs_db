class Group < ApplicationRecord
  has_many :artists
  has_many :albums, as: :owner
end
