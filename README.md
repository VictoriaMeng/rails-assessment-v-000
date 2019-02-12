## README

RateMyFav is an app that lets you submit and vote on your favorite franchises.

Users can create accounts either manually or through Facebook authentication and give star Ratings to the Franchises on the website.

This is the Rails-only version of RateMyFav. No Javascript is used for asynchronous GET/POST requests. Instead, all API interactions are written with RESTful and custom Rails routes to demonstrate an understanding of standard Rails routing.

Blog post about this app's development [here](https://victoriameng.github.io/rails_portfolio_project_ratemyfav_aka_dont_rely_too_much_on_helpers).

## Installation

Clone the app repo to your local drive. 

Navigate into the root folder and run `bundle install`.

Run `rake db:migrate` to run ActiveRecord migrations.

Then, run `rails s` navigate to http://localhost:3000/ to sign up and login to the app.
