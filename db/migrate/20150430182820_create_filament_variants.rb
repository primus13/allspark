class CreateFilamentVariants < ActiveRecord::Migration
  def change
    
    create_table :filament_variants do |t|
      t.references :filament, index: true, null: false
      t.references :variant, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :filament_variants, :filaments
    add_foreign_key :filament_variants, :variants
  end
end
