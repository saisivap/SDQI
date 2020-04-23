# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
#version
    * Ruby version(2.6.3)
    * Rails version(5.2.4.1)

# System dependencies
    * gets follow the Rails Guides by ruby on rails.
        * https://edgeguides.rubyonrails.org/development_dependencies_install.html 
    

# Configuration
    * bundle install
    * rails db:create 
    * rails db:migrate

# Database creation in Postgresql(Download Postgresql)
    * gem 'pg', '>= 0.18', '< 2.0'

# To initialization Database 
    * rails db:create (you maye get already created ) 
    * rails db:migrate (If their is no any changes in migration file it shows the same )

# How to run the test suite
    * Check the gem test group must be.
        group :test do
        gem 'cucumber-rails', :require => false        
        gem 'database_cleaner'
        gem 'factory_bot_rails'
        gem 'launchy'
        gem 'rspec-rails'
        end
    * To Install cucumber 
        rails generate cucumber:install
    * To run the test cases
         rails cucumber

# Services (job queues, cache servers, search engines, etc.)
    * To run the server(rails s)
    * To check the database console (rails c)
    * To get the data of that particular database Table 
        * Table_name.all # To get all data in that table
        * Table_name #To get the attributes of that particular Table
    * To get all Routes in the project.
        * rails routes # to get all routes
    

# Deployment instructions
    * While deploying the application the postgresql( gem 'pg' ) GEM must be in development group.
    *   group :development, :test do
            gem 'pg', '>= 0.18', '< 2.0'
        end 

* ...
