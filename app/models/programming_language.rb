class ProgrammingLanguage < ApplicationRecord
  serialize :languages
  belongs_to :user

  after_initialize do |language|
    language.languages=[] if language.languages == nil
  end
end
