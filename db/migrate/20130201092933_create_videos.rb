class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :file
      t.text :description
      t.belongs_to :document

      t.timestamps
    end
    add_index :videos, :document_id
  end
end
