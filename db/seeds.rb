# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# users
User.create(name: "John Smith", contact: 12345678, email: "john.smith@example.com", password_digest: "password",confirmation_password_digest:"password")
User.create(name: "Jane Doe", contact: 29876543, email: "jane.doe@example.com", password_digest: "password",confirmation_password_digest:"password")
User.create(name: "Bob Johnson", contact: 5551234, email: "bob.johnson@example.com", password_digest: "password",confirmation_password_digest:"password")
User.create(name: "Alice Brown", contact: 55598765, email: "alice.brown@example.com", password_digest: "password",confirmation_password_digest:"password")
User.create(name: "Sam Williams", contact: 55555512, email: "sam.williams@example.com", password_digest: "password",confirmation_password_digest:"password")

# genre

# movies categories
# 1.action
Action.create(title: "Die Hard", image: "https://example.com/die-hard.jpg", cast: "Bruce Willis, Alan Rickman", ratings: 8, created_at:"4/01/2019")
Action.create(title: "The Terminator", image: "https://example.com/terminator.jpg", cast: "Arnold Schwarzenegger, Linda Hamilton", ratings: 9, created_at:"4/03/2019")
Action.create(title: "John Wick", image: "https://example.com/john-wick.jpg", cast: "Keanu Reeves, Ian McShane", ratings: 8,created_at:"4/02/2019")
Action.create(title: "Lethal Weapon", image: "https://example.com/lethal-weapon.jpg", cast: "Mel Gibson, Danny Glover", ratings: 7, created_at:"4/04/2019")
Action.create(title: "The Matrix", image: "https://example.com/the-matrix.jpg", cast: "Keanu Reeves, Laurence Fishburne", ratings: 9,created_at:"4/05/2019")

# Anime
Anime.create([
    { title: 'Attack on Titan', image: 'https://www.example.com/image1.jpg', cast: 'Yuki Kaji, Marina Inoue, Yui Ishikawa', ratings: 8 },
    { title: 'Naruto', image: 'https://www.example.com/image2.jpg', cast: 'Junko Takeuchi, Noriaki Sugiyama, Chie Nakamura', ratings: 7 },
    { title: 'One Piece', image: 'https://www.example.com/image3.jpg', cast: 'Mayumi Tanaka, Kazuya Nakai, Akemi Okamura', ratings: 9 },
    { title: 'Death Note', image: 'https://www.example.com/image4.jpg', cast: 'Mamoru Miyano, Kappei Yamaguchi, Aya Hirano', ratings: 8 },
    { title: 'Fullmetal Alchemist', image: 'https://www.example.com/image5.jpg', cast: 'Rie Kugimiya, Romi Park, Megumi Toyoguchi', ratings: 9 }
  ])
  