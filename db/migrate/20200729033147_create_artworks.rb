class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
