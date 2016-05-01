class AddInputTypeAgainToDependencies < ActiveRecord::Migration
  def change
    add_column :dependencies, :input_type, :string
  end
end
