class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :file
      t.belongs_to :category

      t.timestamps
    end
  end
end
