class AddInputTypeToDependencies < ActiveRecord::Migration
  def change
    add_column :dependencies, :InputType, :string
  end
end
