class RenameColumnBeenInCoffeeTypes < ActiveRecord::Migration
  def change
     rename_column :coffee_types,:been_name,:bean_name
  end
end
