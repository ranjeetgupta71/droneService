# README

See the [demo video present here](https://drive.google.com/file/d/1emp6u4xFZ-1zvgGBh6ymITvnzCt0uH6T/view?usp=sharing).

## Framework Used

- Ruby on Rails - A full stack framework that can be used to create both frontend and backend.

## Installing the application

### OS Requirement

Ubuntu 22.04 (or 20.04)

### Installing ruby & related dependencies

- Install RVM (ruby version manager). Follow instructions present [here](https://rvm.io/rvm/install)
- Install ruby version 2.7.3 using the RVM.
- Verify that sqlite3 is installed - (command: $sqlite3 --version)
- Install rails using `gem install rails`
- Clone the repository - `git clone https://github.com/ranjeetgupta71/droneService.git`
- Move to the project directory: `$ cd droneService`
- Install the project dependencies using `$ bundle install`
- Create the database using `$ rails db:setup`. If you run into any error, use `rails db:reset`.
- Start the rails server using `rails s`
- Go to `localhost:3000` to see the website

## Database Schema

- The schema file is present in [db/schema.rb](https://github.com/ranjeetgupta71/droneService/blob/main/db/schema.rb).
- I have created 4 tables. Customers, Bookings, Locations and Durations.
- Booking table contains customer_id which is a foreign key that points to a customers record.
- I had created Locations and Durations table so that I can use them in while booking a meeting but that work is incomplete.
