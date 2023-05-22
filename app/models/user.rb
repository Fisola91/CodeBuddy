class User < ApplicationRecord
  serialize :programming_languages, Array
  has_many :chatrooms_as_user_1, class_name: "Chatroom", foreign_key: :user_1_id, dependent: :destroy
  has_many :chatrooms_as_user_2, class_name: "Chatroom", foreign_key: :user_2_id, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  LANGUAGES = ['Python', 'SQL', 'HTML&CSS', "Ruby", "R", "PHP", "Java", "JavaScript", 'Kotlin', 'React', 'Rust', 'Node.js', '.NET', 'Dart', 'Low-Code & No-Code', 'Prompt Engineering']
end
