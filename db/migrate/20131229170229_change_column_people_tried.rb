class ChangeColumnPeopleTried < ActiveRecord::Migration
  def change
    change_column :coffee_types,:people_tried,:integer,:default=>0
  end
end
