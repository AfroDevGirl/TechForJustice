class RemoveInputTypeFromDependencies < ActiveRecord::Migration
  def change
    remove_column :dependencies, :InputType, :string
  end
end
