class CreateDocumentDependencies < ActiveRecord::Migration
  def change
    create_table :document_dependencies do |t|
      t.document :references
      t.dependency :references

      t.timestamps null: false
    end
  end
end
