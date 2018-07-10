class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :name
      t.string :email
      t.string :username
    end
  end
end
