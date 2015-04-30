class CreateUserPrinterSettings < ActiveRecord::Migration
  def change
    create_table :user_printer_settings do |t|
      t.references :user, index: true, null: false
      t.references :user_printer_setup, index: true, null: false
      t.references :user_filament_variant, index: true, null: false
      t.float :print_speed
      t.float :nozzle_size

      t.timestamps null: false
    end
    add_foreign_key :user_printer_settings, :users
    add_foreign_key :user_printer_settings, :user_printer_setups
    add_foreign_key :user_printer_settings, :user_filament_variants
  end
end
