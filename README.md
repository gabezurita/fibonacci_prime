# Primonacci

Primonacci is a simple, single-page Ruby on Rails application that accepts <i>n</i>, an integer greater or equal to 0, and prints out the first <i>n</i> numbers in the Fibonacci Sequence, as well as the first <i>n</i> prime numbers.

Every time the app calculates a number, it is cached in memory so that repeated requests use previously-calculated numbers from the sequence.

In addition, Fibonacci values are calculated on a separate thread from prime values.

The app is [live on Heroku.](http://primonacci.herokuapp.com/)

# Local Install

1.  Clone the repository.
2.  Install the required gems:  `bundle install`.
3.  Start the application:  `bundle exec rails server`
