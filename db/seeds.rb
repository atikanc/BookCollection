# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

books = Book.create([
    {
        title: "Book of Much Wow",
        author: "Doge",
        price: 4.20,
        published: 20071119
    },
    {
        title: "Book of Stonks",
        author: "Doge",
        price: 12.34,
        published: 20210125
    },
    {
        title: "Just Do It",
        author: "Nike",
        price: 499.99,
        published: 20100813
    }
    
]
)