class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.string :code
      t.text :description
      t.references :colorfamily, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :colors, :colorfamilies
  end
end
