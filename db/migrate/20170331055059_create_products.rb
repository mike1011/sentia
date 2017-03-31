class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name,index:true
      t.string :price
      t.string :owner

      t.timestamps null: false
    end
  end
end
