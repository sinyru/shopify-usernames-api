class CreateUsernames < ActiveRecord::Migration[5.0]
  def change
    create_table :usernames do |t|
      t.string :email, null: false
      t.string :identifier, null: false

      t.timestamps
    end
  end
end
