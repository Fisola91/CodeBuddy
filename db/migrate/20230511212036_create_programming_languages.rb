class CreateProgrammingLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :programming_languages do |t|
      t.text :languages, array:true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
