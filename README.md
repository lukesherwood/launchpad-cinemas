# README

Challenge - 

A client of LaunchPad Lab is opening a movie theater. We need you to build a Rails app so they can start selling tickets online.

Customers should be able to come to the site and see all movies playing with their showtimes. Seating is limited for each theater so a particular showtime should only have a limited number of seats. Once a show sells out, a customer should no longer be able to buy tickets. Customers should only be able to buy one ticket at a time so don't worry about a shopping cart for this version.

When customers decide to buy their ticket, they should be able to checkout by entering their name, email, credit card, and expiration date. We want to make sure we don't get any bogus orders, so please keep an eye out for any validations and make sure the user knows if there's a problem with the order. We'll add a credit card processor later on, so you DON’T need to integrate with a credit card processor. Once the customer purchases their tickets, they should receive an email receipt.

The theater owner needs a way to manage the movies playing and seating capacities . She should be able to add auditoriums and seating capacities. In addition, the movies change all the time so our client should be able to set which movie is showing in which auditorium.

The theater owner also wants to keep track of her sales, so the order information should be saved to the database. She wants to see a list of all orders and a list of orders for each movie. We don't need any authentication on the app for now.

We're not worried about custom visual design, so feel free to use any CSS framework, or roll your own. However, we need the site to work on mobile, so keep that in mind.

There are many ways to code this challenge, so we'd like to see your thought processes in the app's Readme file. 

# Plan

- create Rails app with PostgreSQL database - as will deploy to Heroku
- set up database with figaro env files
- Models - 
  - Users - name, email, has_many orders
  - auditoriums has many showings, has many movies through showings, name
  - showings - belongs_to auditorium, has many users through orders, time, belongs_to movie, has_many orders
  - Movies - title, showtime, has many auditoriums through showings, has_many showings
  - Orders - belongs_to showing, belongs_to_user

- basic site setup -
  - admin page - create auditoriums, create movies, create/edit showings
  - movies page with showings if not at capacity
  - showing page with modal form for purchasing of ticket
