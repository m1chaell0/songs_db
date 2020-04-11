class Membership < ApplicationRecord
  belongs_to :artist
  belongs_to :group

  artist = Artist.find(1)
  group = Group.find(1)

  Membership.create(group_id: group.id, artist_id: artist.id)
  end
