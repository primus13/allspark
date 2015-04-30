class CreateFilaments < ActiveRecord::Migration
  def change
    create_table :filaments do |t|
      t.string :name, null: false
      t.text :description
      t.references :manufacturer, index: true, null: false
      t.references :material, index: true, null: false
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :filaments, :manufacturers
    add_foreign_key :filaments, :materials
    add_foreign_key :filaments, :categories
  end
end
