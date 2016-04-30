class CreateDocumentSteps < ActiveRecord::Migration
  def change
    create_table :document_steps do |t|
      t.document :references
      t.integer :order
      t.text :video
      t.text :description

      t.timestamps null: false
    end
  end
end
