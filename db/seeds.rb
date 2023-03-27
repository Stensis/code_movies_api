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
    
#   3.comedy
    Comedy.create!(title: "The Hangover", 
        image: "https://example.com/hangover.jpg", 
        cast: "Bradley Cooper, Ed Helms, Zach Galifianakis", 
        ratings: 8.1)

    Comedy.create!(title: "Bridesmaids", 
        image: "https://example.com/bridesmaids.jpg", 
        cast: "Kristen Wiig, Maya Rudolph, Rose Byrne", 
        ratings: 6.8)

    Comedy.create!(title: "Superbad", 
        image: "https://example.com/superbad.jpg", 
        cast: "Jonah Hill, Michael Cera, Christopher Mintz-Plasse", 
        ratings: 7.6)

    Comedy.create!(title: "Step Brothers", 
        image: "https://example.com/stepbrothers.jpg", 
        cast: "Will Ferrell, John C. Reilly", 
        ratings: 6.9)

    Comedy.create!(title: "Anchorman: The Legend of Ron Burgundy", 
        image: "https://example.com/anchorman.jpg", 
        cast: "Will Ferrell, Christina Applegate, Paul Rudd", 
        ratings: 7.2)

    # drama
    Drama.create!(title: "The Shawshank Redemption",
        image: "https://example.com/shawshankredemption.jpg",
        cast: "Tim Robbins, Morgan Freeman, Bob Gunton",
        ratings: 9.3)

    Drama.create!(title: "The Godfather",
            image: "https://example.com/godfather.jpg",
            cast: "Marlon Brando, Al Pacino, James Caan",
            ratings: 9.2)

    Drama.create!(title: "The Godfather: Part II",
            image: "https://example.com/godfather2.jpg",
            cast: "Al Pacino, Robert De Niro, Robert Duvall",
            ratings: 9.0)

    Drama.create!(title: "Forrest Gump",
            image: "https://example.com/forrestgump.jpg",
            cast: "Tom Hanks, Robin Wright, Gary Sinise",
            ratings: 8.8)

    Drama.create!(title: "Schindler's List",
            image: "https://example.com/schindlerslist.jpg",
            cast: "Liam Neeson, Ben Kingsley, Ralph Fiennes",
            ratings: 8.9)



    # horror
    Horror.create!(title: "The Exorcist",
        image: "https://example.com/exorcist.jpg",
        cast: "Ellen Burstyn, Max von Sydow, Linda Blair",
        ratings: 8.0)

    Horror.create!(title: "The Shining",
            image: "https://example.com/theshining.jpg",
            cast: "Jack Nicholson, Shelley Duvall, Danny Lloyd",
            ratings: 8.4)

    Horror.create!(title: "Halloween",
            image: "https://example.com/halloween.jpg",
            cast: "Jamie Lee Curtis, Donald Pleasence, Tony Moran",
            ratings: 7.8)

    Horror.create!(title: "A Nightmare on Elm Street",
            image: "https://example.com/nightmareonelmstreet.jpg",
            cast: "Heather Langenkamp, Robert Englund, Johnny Depp",
            ratings: 7.5)

    Horror.create!(title: "The Silence of the Lambs",
            image: "https://example.com/silenceofthelambs.jpg",
            cast: "Jodie Foster, Anthony Hopkins, Scott Glenn",
            ratings: 8.6)


    # genres
