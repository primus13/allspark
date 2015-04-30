class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.string :name
      t.text :description
      t.references :manufacturer, index: true
      t.references :category, index: true
      t.references :device, index: true

      t.timestamps null: false
    end
    add_foreign_key :printers, :manufacturers
    add_foreign_key :printers, :categories
    add_foreign_key :printers, :devices
  end
end
