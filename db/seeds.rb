# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all

cocktails = [
  {
    name: "Sparkling Campari Orange Cocktail",
    picture: '1.jpeg'
    },
  {
    name: "Classic White Russian",
    picture: '2.jpeg'
    },
  {
    name: "Whiskey Sour Punch",
    picture: '3.jpeg'
    },
  {
    name: "Easy Pomegranate Margaritas",
    picture: '4.jpeg'
    },
  {
    name: "Jameson Old Fashioned",
    picture: '5.jpeg'
    },
  {
    name: "Pumpkin Apple Shandy",
    picture: '6.jpeg'
    },
  {
    name: "Sloe Gin Fizz",
    picture: '29.jpeg'
    },
  {
    name: "Frosting Shots",
    picture: '27.jpeg'
    },
  {
    name: "Oaxacan Rusty Nail",
    picture: '9.jpeg'
    },
  {
    name: "Creamsicle Delight Cocktail",
    picture: '10.jpeg'
    },
  {
    name: "Pink Champagne Sangria",
    picture: '11.jpeg'
    },
  {
    name: "Irish Cream Pie Cocktail",
    picture: '12.jpeg'
    },
  {
    name: "Frozen Orange Prozecco",
    picture: '13.jpeg'
    },
  {
    name: "Mint Julep",
    picture: '26.jpeg'
    },
  {
    name: "Berry Lemonade Margaritas",
    picture: '15.jpeg'
  },
  {
    name: "The Bee’s Knees",
    picture: '16.jpeg'
    },
  {
    name: "Blood Orange Margarita",
    picture: '17.jpeg'
    },
  {
    name: "Raspberry Rosé Sangria",
    picture: '18.jpeg'
    },

    {
    name: "Blueberry Mojito",
    picture: '19.jpeg'
    },

    {
    name: "Watermelon Infused Vodka",
    picture: '20.jpeg'
    },
    {
      name: "Skinny Salty Dog",
      picture: '21.jpeg'
    },

  {
    name: "New York Sour Cocktail",
    picture: '22.jpeg'
    },
  {
    name: "Piña Colada Punch",
    picture: '23.jpeg'
  },
  {
    name: "Lavender Mojitos",
    picture: '24.jpeg'
  }
]

ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum lavander watermelon blueberry raspberry whiskey)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }


cocktails.each { |cocktail| Cocktail.create(cocktail) }