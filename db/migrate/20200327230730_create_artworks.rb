class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.integer :artist_id, null: false

      t.timestamps
    end
  end
  # two separate artists could both have artworks of their own named "Untitled", but a single artist should not be able to have two pieces with that same title.
  add_index :artworks, [:title, :artist_id], unique: true
  add_index :artworks, :artist_id
  add_index :artworks, :image_url, unique: true
end
