class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
      t.string :city
      t.text :your_story
      t.string :community
      t.string :interest
      t.string :topic
      t.string :github_link
      t.string :linkedin_link

      t.timestamps
    end
  end
end
