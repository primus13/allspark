class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.references :technology, index: true, null: false
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :variants, :technologies
  end
end
