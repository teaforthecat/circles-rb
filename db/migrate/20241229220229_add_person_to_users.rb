class AddPersonToUsers < ActiveRecord::Migration[8.0]
  def change
    add_reference :users, :person, null: false, foreign_key: true
  end
end