class CreateHeatbeds < ActiveRecord::Migration
  def change
    create_table :heatbeds do |t|
      t.string :name
      t.text :description
      t.references :manufacturer, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :heatbeds, :manufacturers
    add_foreign_key :heatbeds, :categories
  end
end
