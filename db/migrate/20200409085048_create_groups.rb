class CreateGroups < ActiveRecord::Migration[6.0]
  before_create :capitalize_name

  def capitalize_name
    self.name = name.capitalize
  end
  def change
    create_table :groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
