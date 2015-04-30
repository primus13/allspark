class CreateUserPrinters < ActiveRecord::Migration
  def change
    create_table :user_printers do |t|
      t.references :user, index: true, null: false
      t.references :printer, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :user_printers, :users
    add_foreign_key :user_printers, :printers
  end
end
