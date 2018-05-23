class CreateUsernames < ActiveRecord::Migration[5.0]
  def change
    create_table :usernames do |t|
      t.string :email, null: false, unique: true
      t.string :identifier, null: false, unique: true

      t.timestamps
    end
  end
end
