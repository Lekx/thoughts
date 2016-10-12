class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.string :thought
      t.integer :category_id
      t.string :author
      t.string :site

      t.timestamps null: false
    end
  end
end
