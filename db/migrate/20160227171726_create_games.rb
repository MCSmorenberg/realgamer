class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.string :developer
      t.string :publisher
      t.date :release_date
      t.string :slipcover
      t.text :description

      t.timestamps null: false
    end
  end
end
