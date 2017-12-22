# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create([
  { name: 'Развлечение', description: 'Развлекйся до упаду!' },
  { name: 'Спорт', description: 'В здоровом теле - здоровый дух!' },
  { name: 'Программирование', description: 'Совершенству нет придела' },
  { name: 'Музыка', description: 'Будь как Моцарт' },
  { name: 'Жизнь', description: 'Все о жизни хомячков' },
  { name: 'Ruby', description: 'The best programming language' },
  { name: 'Развитие', description: 'Никогда не останавливайся на достигнутом!' },
  { name: 'Шаурма', description: 'Я це люблю' },
  { name: 'Котики', description: 'Ну как же без них?' },
  { name: 'Всякая всячина', description: 'Флуд' }
  ])

user = User.create(
{ 
  name: 'Ruby DEV',
  email: 'ruby@gmail.com',
  password: 'password',
  password_confirmation: 'password'
})

Post.create([
{ 
  user_id: user.id,
  author: user.name,
  name: 'First POST',
  content: 'With the file db/seeds.rb, the Rails gods have given us a way 
  of feeding default values easily and quickly to a fresh installation.'
},
{
  user_id: user.id,
  author: user.name,
  name: 'Secound POST',
  content: 'I use the file db/seeds.rb at this point because it offers a
  simple mechanism for filling an empty database with default values. '
}
])