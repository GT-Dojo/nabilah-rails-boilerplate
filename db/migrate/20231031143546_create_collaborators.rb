class CreateCollaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :collaborators do |t|
      t.references :artist_id, type: :string, index: true, foreign_key: true
      t.references :song_id, type: :string, index: true, foreign_key: true
      t.string :name
      t.string :role
      t.timestamps
    end
  end
end
