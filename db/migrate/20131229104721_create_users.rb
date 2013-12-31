class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :email,:string
      t.column :cuid,:string
   
      t.timestamps
    end
  end
  def self.down
  	drop_table :users
  end
end
