class CreateChatrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chatrooms do |t|
      t.references :user_1, null: false, foreign_key: true
      t.references :user_2, null: false, foreign_key: true

      t.timestamps
    end
  end
end
