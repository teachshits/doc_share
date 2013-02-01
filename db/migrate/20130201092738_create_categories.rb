class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :parent_id
      t.text :description

      t.timestamps
    end
  end
end
