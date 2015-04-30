class CreateNozzles < ActiveRecord::Migration
  def change
    create_table :nozzles do |t|
      t.string :name
      t.text :description
      t.references :manufacturer, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :nozzles, :manufacturers
    add_foreign_key :nozzles, :categories
  end
end
