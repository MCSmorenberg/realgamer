class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :game, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
