class CreateUserHotends < ActiveRecord::Migration
  def change
    create_table :user_hotends do |t|
      t.references :user, index: true, null: false
      t.references :hotend, index: true, null: false
      t.references :user_printer, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_hotends, :users
    add_foreign_key :user_hotends, :hotends
    add_foreign_key :user_hotends, :user_printers
  end
end
