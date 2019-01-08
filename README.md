# Messenger App

Description
-------
Initial iteration of an online messaging app. Allows millennials to:
  *Send messages
  *See the timestamp of when messages are created 
  *Messages are shorten on the homepage
  *If user clicks on message they taken to the full message which allows editing of message or deletion

User Stories
-------
```
User sees the home page at the index where it has
A heading
A form
All the messages with a timestamp in reverse chronological order(newest at the top) 
Each message has a unique id

User can input text of a message

User can submit the form and see the new message at the top of the previous messages

User sees each message displayed on the home page abbreviated to 20 characters

User can click on each message of the list which takes me to a page which shows me the whole text of the message
for example a url could look like localhost:<port>/messages/2
```

Installation
-------
$`git clone git@github.com:CazaBelle/messenger-app-database.git`
$ `cd messanger-app-database`
$`bundle` to install required gems 

ORM
-------
`Data_mapper` => need more info here

Database configuration
-------
$`brew install postgresql`
$`brew services start postgresql` 

Within postgres you must create a development and testing database:
 * =# `CREATE DATABASE messenger_db_development`
 * =# `CREATE DATABASE messenger_db_test`

$ `rake db:auto_migrate RACK_ENV=development` - create tables 
$ `rake db:auto_upgrade RACK_ENV=development` - ensure that data persists in tables

Getting started
-------
* Run $`rackup` to start the server
* Open up a browser and navigate to the following page http://localhost:9292

Testing
-------
$ `rake db:auto_migrate RACK_ENV=test ` *need to set RACK_ENV to test as will default development 
$ `rspec`
    
This app if configured with `capybara` for feature testing and `database_cleaner` to wipe the testing db after each run 

Planned Extensions
-------
* Add login page

Contributors 
-------
Adam Lodowski 
Jacques Laffy
Subomi
Carol Gardiner