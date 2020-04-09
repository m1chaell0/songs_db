class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :owner_id
      t.string :owner_type
      t.integer :genre_id

      t.timestamps
    end
  end
end
