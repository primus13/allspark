class CreateHotends < ActiveRecord::Migration
  def change
    create_table :hotends do |t|
      t.string :name
      t.text :description
      t.references :manufacturer, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :hotends, :manufacturers
    add_foreign_key :hotends, :categories
  end
end
