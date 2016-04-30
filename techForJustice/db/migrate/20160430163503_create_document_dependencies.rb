class CreateDocumentDependencies < ActiveRecord::Migration
  def change
    create_table :document_dependencies do |t|
      t.references :document
      t.references :dependency

      t.timestamps null: false
    end
  end
end
