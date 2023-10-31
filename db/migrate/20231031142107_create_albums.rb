class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.references :artist_id, type: :string, index: true, foreign_key: true
      t.string :title
      t.string :description
      t.string :release_year
      t.string :genre
      t.string :producer
      t.text :album_cover
      t.string :duration
      t.string :rating
      t.integer :awards
      t.timestamps
    end
  end
end
