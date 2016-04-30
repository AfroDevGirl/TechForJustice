class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.string :type
      t.references :genre

      t.timestamps null: false
    end
  end
end
