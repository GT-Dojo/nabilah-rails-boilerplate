class CreatePublishers < ActiveRecord::Migration[7.0]
  def change
    create_table :publishers do |t|
      t.references :song_id, type: :string, index: true, foreign_key: true
      t.string :name
      t.text :address
      t.string :website
      t.string :years_found
      t.integer :rating
      t.string :awards
      t.string :logo
      t.timestamps
    end
  end
end
