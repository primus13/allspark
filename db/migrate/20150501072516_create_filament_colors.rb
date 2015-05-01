class CreateFilamentColors < ActiveRecord::Migration
  def change
    create_table :filament_colors do |t|
      t.references :filament, index: true, null: false
      t.references :color, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :filament_colors, :filaments
    add_foreign_key :filament_colors, :colors
  end
end
