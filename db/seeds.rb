# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Blowing up the things"
Console.destroy_all
Game.destroy_all

puts "Creating Consoles"

c1 = Console.create(name: "Playstation", company: "Sony")
c2 = Console.create(name: "Playstation 2", company: "Sony")
c3 = Console.create(name: "Playstation 3", company: "Sony")
c4 = Console.create(name: "Playstation 4", company: "Sony")
c5 = Console.create(name: "Xbox", company: "Microsoft")
c6 = Console.create(name: "Xbox 360", company: "Microsoft")
c7 = Console.create(name: "Xbox One", company: "Microsoft")
c8 = Console.create(name: "Gamecube", company: "Nintendo")
c9 = Console.create(name: "Wii", company: "Nintendo")
c10 = Console.create(name: "Switch", company: "Nintendo")

puts "Finshed creating Consoles"

puts "Creating Games"

Game.create(title: "Hot Wheels Turbo Racing", maturity_rating: "E", price: 10, genre: "Arcade", console_id: c1.id)

Game.create(title: "Shadow of the Colossus", maturity_rating: "T", price: 20, genre: "Adventure", console_id: c2.id)
Game.create(title: "Okami", maturity_rating: "E", price: 20, genre: "Adventure", console_id: c2.id)

Game.create(title: "God of War III", maturity_rating: "M", price: 30, genre: "Adventure", console_id: c3.id)

Game.create(title: "Spider-Man", maturity_rating: "T", price: 60, genre: "Adventure", console_id: c4.id)
Game.create(title: "Horizon Zero Dawn", maturity_rating: "T", price: 50, genre: "Adventure", console_id: c4.id)
Game.create(title: "Uncharted 4", maturity_rating: "M", price: 40, genre: "Shooter", console_id: c4.id)
Game.create(title: "Limbo", maturity_rating: "M", price: 20, genre: "Puzzle", console_id: c4.id)

Game.create(title: "Halo: Combat Evolved", maturity_rating: "T", price: 20, genre: "Shooter", console_id: c5.id)
Game.create(title: "Odd World: Munches Odyssey", maturity_rating: "T", price: 20, genre: "Puzzle", console_id: c5.id)

Game.create(title: "Red Dead Redemption", maturity_rating: "M", price: 45, genre: "Adventure", console_id: c6.id)
Game.create(title: "The Elder Scrolls V: Skyrim", maturity_rating: "T", price: 60, genre: "Adventure", console_id: c6.id)

Game.create(title: "Anthem", maturity_rating: "M", price: 50, genre: "Adventure", console_id: c7.id)
Game.create(title: "Destiny", maturity_rating: "M", price: 50, genre: "Adventure", console_id: c7.id)

Game.create(title: "pikmin", maturity_rating: "E", price: 20, genre: "Adventure", console_id: c8.id)
Game.create(title: "Super Smash Bros. Mele", maturity_rating: "E", price: 45, genre: "Adventure", console_id: c8.id)

Game.create(title: "Super Smash Bros. Brawl", maturity_rating: "E", price: 60, genre: "Adventure", console_id: c9.id)
Game.create(title: "Animal Crossing: City Folk", maturity_rating: "E", price: 45, genre: "Adventure", console_id: c9.id)

Game.create(title: "The Legend of Zelda: Breath of the Wild", maturity_rating: "E", price: 60, genre: "Adventure", console_id: c10.id)
Game.create(title: "Yoshi's Crafted World", maturity_rating: "E", price: 45, genre: "Adventure", console_id: c10.id)

puts "Finshed creating Consoles"
