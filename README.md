# README

## My steps of action:

  - Create rails app with PostgreSQL database so it can be easily deployed to Heroku
  - Database setup, using env files for password
  - Determine how many and what models I need to be able to have a functioning application
  - Decided on 5 models - User, Auditorium, Showing, Order, and Movie
  - User has many orders
  - Auditorium has many showings, has many movies through showings
  - Showings belongs to auditorium and belongs to movie, has many orders, has many users through orders
  - Movies has many showings, has many auditoriums through showings
  - orders belong to showing, belong to user
  - Set up the routes -  I nested orders within showings as you can't have an order without a showing.
  - I decided to leave out a way to add movies, this can be added later easily but it wasn't in the requirements so for now movies are added through seeds.
  - Set up the admin page so I could add auditorium and showings - 
  - Added a Jquery event listener to render an adjust capacity form for auditoriums since that's the only thing needed to edit I didn't think it required a restful page of its own
  - Admin page doesn't have authorization or protection as it wasn't required but if needed to be set up I would use Devise/Pundit and Json Web Tokens to manage sessions
  - Developed home page to show movies directly - thats what the user is coming to the page for so may as well be on the home page
  - Added ability to make orders to showings
  - credit card number is checked for length and that its a number - more involved algorithms for checking are outside of scope I think.
  - credit card is saved to database - terribly unsafe, but it made it easier to set up validation and form error rendering.
  - Added some logic to frontend so sold out shows instead of eet tickets button
  - added logic to backend so order wouldn't proceed if someone went directly to /showing/1/orders/new for example
  - Added bootstrap navbar for easy navigation
  - attempted to set up email on confirmation of order
  - successfully outputted to log console the email I wished to send to the correct email
  - set up admin page to show all orders for each showing and total orders - total orders required a separate route to be set up
  - tested all features - all working well
  - deployed to heroku, seeded data and tested that it works correctly
  - unsuccessful in setting up email servers so the email is actually sent in production used SendGrid addon for Heroku and followed instructions but still unsuccessful
       - need to learn more about rails activemailer email setup

## Challenge - 

A client of LaunchPad Lab is opening a movie theater. We need you to build a Rails app so they can start selling tickets online.

Customers should be able to come to the site and see all movies playing with their showtimes. Seating is limited for each theater so a particular showtime should only have a limited number of seats. Once a show sells out, a customer should no longer be able to buy tickets. Customers should only be able to buy one ticket at a time so don't worry about a shopping cart for this version.

When customers decide to buy their ticket, they should be able to checkout by entering their name, email, credit card, and expiration date. We want to make sure we don't get any bogus orders, so please keep an eye out for any validations and make sure the user knows if there's a problem with the order. We'll add a credit card processor later on, so you DON’T need to integrate with a credit card processor. Once the customer purchases their tickets, they should receive an email receipt.

The theater owner needs a way to manage the movies playing and seating capacities . She should be able to add auditoriums and seating capacities. In addition, the movies change all the time so our client should be able to set which movie is showing in which auditorium.

The theater owner also wants to keep track of her sales, so the order information should be saved to the database. She wants to see a list of all orders and a list of orders for each movie. We don't need any authentication on the app for now.

We're not worried about custom visual design, so feel free to use any CSS framework, or roll your own. However, we need the site to work on mobile, so keep that in mind.

There are many ways to code this challenge, so we'd like to see your thought processes in the app's Readme file. 

## Plan

- create Rails app with PostgreSQL database - as will deploy to Heroku X
- set up database with figaro env files X
- Models - 
  - Users - name, email, has_many orders X
  - auditoriums has many showings, has many movies through showings, name X
  - showings - belongs_to auditorium, has many users through orders, time, belongs_to movie, has_many orders X
  - Movies - title, showtime, has many auditoriums through showings, has_many showings X
  - Orders - belongs_to showing, belongs_to_user X

- basic site setup -
  - admin page - edit capacity, create auditoriums, create/edit showings X
  - movies all page with showings if not at capacity X
  - showing ticket purchase form X
  - navbar for easy navigation X


