# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
# ProgrammingLanguage.destroy_all

tim = User.create!(
  username: "Timo",
  first_name: "Tim",
  last_name: "Henderson",
  email: "fe@gmail.com",
  gender: "male",
  bio: "Avid sports fan and participant, loves attending and organizing local sports events.",
  password: "123456",
  password_confirmation: "123456",
)
