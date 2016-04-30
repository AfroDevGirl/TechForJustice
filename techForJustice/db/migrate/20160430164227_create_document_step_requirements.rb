class CreateDocumentStepRequirements < ActiveRecord::Migration
  def change
    create_table :document_step_requirements do |t|
      t.document_step :references
      t.dependency :references

      t.timestamps null: false
    end
  end
end
