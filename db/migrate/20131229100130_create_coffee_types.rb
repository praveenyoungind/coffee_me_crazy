class CreateCoffeeTypes < ActiveRecord::Migration
  def self.up
    create_table :coffee_types do |t|
      t.column :been_name,:string
      t.column :discription,:string
      t.column :location,:string
      t.column :people_tried,:integer    
      t.timestamps
    end
  end
  def self.down
     drop_table :coffee_types
  end
end
