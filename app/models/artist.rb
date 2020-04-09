class Artist < ApplicationRecord
  belongs_to :group
  has_many :albums, as: :owner
end
