class CreateDocumentStepRequirements < ActiveRecord::Migration
  def change
    create_table :document_step_requirements do |t|
      t.references :document_step
      t.references :dependency	

      t.timestamps null: false
    end
  end
end
