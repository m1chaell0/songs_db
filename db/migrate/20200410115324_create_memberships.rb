class CreateMemberships < ActiveRecord::Migration[6.0]
  def change

    create_table :groups do |t|
      t.string :name
      t.timestamps
    end

    create_table :artists do |t|
      t.string :name
      t.timestamps
    end

    create_table :memberships do |t|
      t.belongs_to :artist
      t.belongs_to :group
      t.integer :group_id
      t.integer :artist_id

      artist = Artist.find(1)
      group = Group.find(1)
      membership.create(group_id: group.id, artist_id: artist.id)
      t.timestamps
    end
  end

  def new
    artist = Artist.find(1)
    group = Group.find(1)
    membership.create(group_id: group.id, artist_id: artist.id)
  end


  end

