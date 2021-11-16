# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminPassword.create value: '123456'

Coach.create(
  email: 'fdas@yopmail.com',
  username: 'coachlol',
  password: '123456',
  name: 'Coach quântico de lol',
  whatsapp: '(00)12345-6789',
  game: 'League of Legends'
)

Coach.create(
  email: 'asdf@yopmail.com',
  username: 'coachxadrez',
  password: '123456',
  name: 'Magnos Carlos',
  whatsapp: '(00)12345-6788',
  game: 'Xadrez'
)