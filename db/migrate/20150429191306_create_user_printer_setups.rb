class CreateUserPrinterSetups < ActiveRecord::Migration
  def change
    create_table :user_printer_setups do |t|
      t.references :user, index: true, null: false
      t.references :user_printer, index: true, null: false
      t.references :user_nozzle, index: true
      t.references :user_heatbed, index: true
      t.references :user_hotend, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_printer_setups, :users
    add_foreign_key :user_printer_setups, :user_printers
    add_foreign_key :user_printer_setups, :user_nozzles
    add_foreign_key :user_printer_setups, :user_heatbeds
    add_foreign_key :user_printer_setups, :user_hotends
  end
end
