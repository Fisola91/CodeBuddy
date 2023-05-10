class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum languages: ['Python', 'SQL', 'HTML&CSS', "Ruby", "R", "PHP", "Java", "JavaScript", 'Kotlin', 'React', 'Rust', 'Node.js', '.NET', 'Dart', 'Low-Code & No-Code', 'Prompt Engineering']
end
