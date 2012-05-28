class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :p_name
      t.integer :p_category

      t.timestamps
    end
  end
end
