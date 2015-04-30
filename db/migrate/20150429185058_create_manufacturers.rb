class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.text :description
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :manufacturers, :categories
  end
end
