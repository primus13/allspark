class CreateUserHeatbeds < ActiveRecord::Migration
  def change
    create_table :user_heatbeds do |t|
      t.references :user, index: true, null: false
      t.references :heatbed, index: true, null: false
      t.references :user_printer, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_heatbeds, :users
    add_foreign_key :user_heatbeds, :heatbeds
    add_foreign_key :user_heatbeds, :user_printers
  end
end
