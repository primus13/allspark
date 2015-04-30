class CreateUniquefilaments < ActiveRecord::Migration
  def change
    create_table :uniquefilaments do |t|
      t.references :filament_variant, index: true, null: false
      t.references :color, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :uniquefilaments, :filament_variants
    add_foreign_key :uniquefilaments, :colors
  end
end
