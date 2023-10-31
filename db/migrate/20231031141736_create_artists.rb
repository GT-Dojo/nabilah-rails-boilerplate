class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :stage_name
      t.string :label
      t.string :dob
      t.string :nationality
      t.text :biography, limit: 4000
      t.string :instagram
      t.timestamps
    end
  end
end
