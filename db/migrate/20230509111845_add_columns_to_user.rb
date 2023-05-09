class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :city, :string
    add_column :users, :bio, :text
    add_column :users, :linkedin_link, :string
    add_column :users, :github_link, :string
    add_column :users, :programming_languages, :string
    add_column :users, :topic_interest, :string
    add_column :users, :communities, :string
  end
end
