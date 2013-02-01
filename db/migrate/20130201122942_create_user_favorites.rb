class CreateUserFavorites < ActiveRecord::Migration
  def change
    create_table :user_favorites do |t|
      t.belongs_to :user
      t.belongs_to :document

      t.timestamps
    end
    add_index :user_favorites, :user_id
    add_index :user_favorites, :document_id
  end
end
