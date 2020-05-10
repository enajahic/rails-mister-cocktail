# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
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
    picture: '32.jpeg'
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

ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum lavander watermelon blueberry raspberry whiskey orange  campari champagne)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }


cocktails.each { |cocktail| 
    created = Cocktail.create(cocktail)

    20.times do |n|
      content = Faker::Restaurant.review
      title = ["Excellent", "Good", "Average", "The best", "Great", "Love this place", "Best cocktails ever!", "You must try these cocktails!"].sample
      rating = rand(1..5)
      Review.create!(
        title: title,
        content: content,
        rating: rating,
        cocktail: created)
    end
    5.times do |n|
      desc = ["1 dl of", "2 dl of", "5 dl of","3 parts of", "5oz of", "4 pieces of", "1 juice of", "1/3 cup (80ml)of", "100ml of", "50ml of", "200ml of", "75ml of", "150ml of","large handful of ice and", "1 tbsp of","pinch of", "small handful mint leaves and"].sample
      ingredient = Ingredient.all.sample

      Dose.create!(
        description: desc,
        cocktail: created,
        ingredient: ingredient )
    end
}
