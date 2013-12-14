class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name, null: false
      t.string :photo, null: false

      t.timestamps
    end
  end
end
