class CreateUserUniquefilaments < ActiveRecord::Migration
  def change
    create_table :user_uniquefilaments do |t|
      t.references :user, index: true, null: false
      t.references :uniquefilament, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :user_uniquefilaments, :users
    add_foreign_key :user_uniquefilaments, :uniquefilaments
  end
end
