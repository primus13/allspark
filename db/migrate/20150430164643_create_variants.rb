class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.references :technology, index: true, null: false
      t.float :diameter

      t.timestamps null: false
    end
    add_foreign_key :variants, :technologies
  end
end
