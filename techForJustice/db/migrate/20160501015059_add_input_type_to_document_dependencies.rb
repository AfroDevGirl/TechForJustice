class AddInputTypeToDocumentDependencies < ActiveRecord::Migration
  def change
    add_column :document_dependencies, :InputType, :string
  end
end
