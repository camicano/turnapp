class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :genre
      t.integer :artist_id

      t.timestamps
    end
  end
end
