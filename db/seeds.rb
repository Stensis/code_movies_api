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
