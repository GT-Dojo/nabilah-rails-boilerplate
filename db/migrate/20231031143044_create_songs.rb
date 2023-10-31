class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.references :artist_id, type: :string, index: true, foreign_key: true
      t.references :album_id, type: :string, index: true, foreign_key: true
      t.string :title
      t.string :description
      t.string :release_year
      t.string :genre
      t.timestamps
    end
  end
end
