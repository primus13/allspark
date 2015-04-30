class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.text :description
      t.references :manufacturer, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :devices, :manufacturers
    add_foreign_key :devices, :categories
  end
end
