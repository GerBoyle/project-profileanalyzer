class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :login
      t.string :id
      t.decimal :name

      t.timestamps
    end
  end
end
