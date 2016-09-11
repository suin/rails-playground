class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name, null: false
      t.string :file_id, null: false

      t.timestamps null: false
    end
    add_index :photos, :file_id, unique: true
  end
end
