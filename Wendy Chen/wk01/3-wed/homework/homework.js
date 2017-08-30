/* # Exercises: Objects

## The Recipe Card

Never forget another recipe!

Create an object to hold information on your favorite recipe.
It should have properties for title (a string), servings (a number), and ingredients
(an array of strings).

On separate lines (one console.log statement for each), log the recipe information
so it looks like:

- Mole
- Serves: 2
- Ingredients:
- cinnamon
- cumin
- cocoa
*/

var recipe = {
  title:"Mole",
  servings:2,
  ingredients:['cinnamon','cumin','cocoa']
};

console.log("- "+ recipe.title);
console.log("- Serves:" + recipe.servings);
console.log("- Ingredients:");
console.log("- "+ recipe.ingredients[0]);
console.log("- "+ recipe.ingredients[1]);
console.log("- "+ recipe.ingredients[2]);

/*
Object.keys(recipe).forEach(function(key) {
    console.log(key);
    console.log(recipe[key]);
});
*/

/**
## The Reading List

Keep track of which books you read and which books you want to read!

Create an array of objects, where each object describes a book and has properties
for the title (a string), author (a string),
and alreadyRead (a boolean indicating if you read it yet).

Iterate through the array of books. For each book, log the book title and
book author like so: "The Hobbit by J.R.R. Tolkien".
Now use an if/else statement to change the output depending on whether you read it
yet or not. If you read it, log a string like 'You already read "The Hobbit" by J.R.R. Tolkien', and if not, log a string like 'You still need to read "The Lord of the Rings" by J.R.R. Tolkien.'
*/

var books = [
  { title: "The Hobbit",
  author:"J.R.R Tolkien",
  alreadyRead:true },

  { title:'book2',
  author:'author2',
  alreadyRead:false}
];

Object.keys(books).forEach(function(key) {
  if(books[key].alreadyRead){
    console.log("You already read "+books[key].title +" by "+books[key].author);
  }
  else{
    console.log("You still need to read "+books[key].title +" by "+books[key].author);
  }
});

/*
## The Movie Database

It's like IMDB, but much much smaller!

Create an object to store the following information about your
favorite movie: title (a string), duration (a number), and stars (an array of strings).

Create a function to print out the movie information like so:
"Puff the Magic Dragon lasts for 30 minutes. Stars: Puff, Jackie, Living Sneezes."
*/

var movie = {
  title:'movie1',
  duration:'120 mins',
  stars:['actor1','actor2','actor3']
}

console.log(movie.title +" lasts for "+ movie.duration+". Stars: " + movie.stars);
