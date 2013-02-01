class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :title
      t.string :file
      t.text :description
      t.belongs_to :document

      t.timestamps
    end
    add_index :audios, :document_id
  end
end
