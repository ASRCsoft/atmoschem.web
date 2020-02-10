class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    # drop_table :users
    create_table :users do |t|
      t.string :name
      t.string :organization
      t.string :email
      t.text :purpose

      t.timestamps
    end
  end
end
