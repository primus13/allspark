class CreateUserNozzles < ActiveRecord::Migration
  def change
    create_table :user_nozzles do |t|
      t.references :user, index: true, null: false
      t.references :nozzle, index: true, null: false
      t.references :user_printer, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_nozzles, :users
    add_foreign_key :user_nozzles, :nozzles
    add_foreign_key :user_nozzles, :user_printers
  end
end
