class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.float :prep
      t.float :cook
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end