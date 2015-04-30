class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name
      t.text :description
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :technologies, :categories
  end
end
