# Jungle Store

A mini e-commerce application built with Rails 4.2

## Live Demo

https://ianduke-rails.herokuapp.com

## Overview

The purpose of this project was to:
* Become familiar with Ruby and the Rails framework
* Learn how to navigate an existing code-base
* Use existing code style and approach to implement new features
* Gain experience handling feature and bug-fix requests

## Features Implemented

* Sold out badge if item quantity is zero
* Added user login, registration, and logout functionality
* Only admins can create/update products & categories via AdminController
* Detailed order summary page
* Automatic email notifications for user sign-up and order confirmation
* Product ratings system

## Setup

1. Clone the repo to run locally
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Optional: Mailcatcher can be used to capture outgoing emails from the server. Should you wish to view the emails, run `gem install mailcatcher` and then type `mailcatcher` to get started.
10. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Screenshots

### Main Page
!["Screenshot of Main page"](https://raw.githubusercontent.com/1andee/rails-ecommerce/master/doc/1.png)

### Product View
!["Screenshot of Product page"](https://raw.githubusercontent.com/1andee/rails-ecommerce/master/doc/2.png)

### Email Notification
!["Screenshot of Email Notification from Mailcatcher"](https://raw.githubusercontent.com/1andee/rails-ecommerce/master/doc/3.png)


## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
