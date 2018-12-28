#Messenger App

Description
-------
Initial iteration of an online messaging app. Allows millennials to:
  *Send messages
  *See the timestamp of when messages are created 
  *Messages are shorten on the homepage
  *If user clicks on message they taken to the full message which allows editing of message or deletion

Installation
-------
`$ git clone repo name`

`$ bundle` to install required gems 

ORM
-------
`Data_mapper` => need more info here


Database configuration
-------
`$ brew install postgresql`

`$ brew services start postgresql` 

Within postgres you must create a development and testing database:
 * `# CREATE DATABASE messenger_db_development`
 * `# CREATE DATABASE messenger_db_test`

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

Testing
-------
run `rspec` in the command line 
    
`capybara` enables feature testing

`database_cleaner` wipes test database after testing 

RakeFile
-------
`rake db:auto_migrate` - allows to clear db from command line
`rake db:auto_upgrade` - allows to upgrade from command line???

Planned Extensions
-------

Contributors 
-------
Adam Lodowski 
Jacques Laffy
Subomi
Carol Gardiner