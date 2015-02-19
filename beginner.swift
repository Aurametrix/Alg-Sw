// this is a comment

/* this is also a comment,
but written over multiple lines */

// To declare a variable you have to use the keyword var.
var greeting: String = "Hello World"

var greeting = "Hello World" // Inferred type String
// variables can be modified once created
greeting = "Hello Swift"
// unlike var, let can not be modified
let languageName = "Swift" // inferred as String
var version = 1.0 // inferred as Double
let introduced = 2014 // inferred as Int
let isAwesome = true // inferred as Bool

// strings
let title = "An Absolute Beginners Guide to Swift"
let review = "Is Awesome!"
let description = title + " - " + review
// description = "An Absolute Beginners Guide to Swift - Is Awesome!"
Strings have a powerful string interpolation feature where it’s easy to use variables to create a strings.
let datePublished = "June 9th, 2014"
let postMeta = "Blog Post published on: \(datePublished)"
// postMeta = "Blog Post published on: June 9th, 2014"
