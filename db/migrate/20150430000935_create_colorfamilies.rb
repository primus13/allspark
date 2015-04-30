class CreateColorfamilies < ActiveRecord::Migration
  def change
    create_table :colorfamilies do |t|
      t.string :name
      t.string :code
      t.text :description

      t.timestamps null: false
    end
  end
end
