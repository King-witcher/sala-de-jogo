# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Coach.create(
  email: 'asdf@yopmail.com',
  username: 'coachxadrez',
  password: '123456',
  name: 'Magnos Carlos',
  whatsapp: '(00)12345-6788',
  game: 'Xadrez'
)
Coach.create(
  email: 'kacnapob@yopmail.com',
  username: 'coachxadrez',
  password: '123456',
  name: 'Caspa Rover',
  whatsapp: '(00)12745-6788',
  game: 'Xadrez'
)

Coach.create(
  name: 'Giuseppe Lanna',
  email: 'giuseppe@yopmail.com',
  username: 'pikao',
  password: '123456',
  whatsapp: '(11) 00000-1111',
  game: 'League of Legends',
  )

Coach.create(
  name: 'BRTT',
  email: 'brtt@yopmail.com',
  username: 'pikao',
  password: '123456',
  whatsapp: '(11) 00000-1111',
  game: 'League of Legends',
  )

CoachRequest.create(
  name: 'Lolzeiro viciado',
  email: 'jsdhf@yop.com',
  whatsapp: '(11) 1234-4567',
  game: 'League of Legends',
  description: 'asjdfaos aspodifjas descrição',
  cpf: '123.452.614-3',
  tier: 3
)

CoachRequest.create(
  name: 'Giuseppe Lanna',
  email: 'aaksdjf@yop.com',
  whatsapp: '(11) 00000-4567',
  game: 'League of Legends',
  description: 'asjdfaos aspodifjas descrição',
  cpf: '123.452.614-3',
  tier: 3
)

CoachRequest.create(
  name: 'Giuseppe Lanna',
  email: 'aaksdjf@yop.com',
  whatsapp: '(11) 00000-4567',
  game: 'Xadrez',
  description: 'asjdfaos aspodifjas descrição',
  cpf: '123.452.614-3',
  tier: 3
)

CoachRequest.create(
  name: 'Bruno da EACH',
  email: 'aaksdjf@yop.com',
  whatsapp: '(11) 00000-4567',
  game: 'Xadrez',
  description: 'to cansado de ser 2300 mano, me da uma aula com magos calços ae',
  cpf: '123.452.614-3',
  tier: 3
)

CoachRequest.create(
  name: 'Faker',
  email: 'aaksdjf@faker.com',
  whatsapp: '(00) 1111-4567',
  game: 'League of Legends',
  description: 'Ow mano soube que o Giuseppe eh mo bom, me da uma aula ae',
  cpf: 'n tenho, sou coreano',
  tier: 3
)