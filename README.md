# Description

EntertainmentFinder is a simple command line database application that parses API data from NYC Open Data in the JSON format.

# Features

1. App will list available entertainment venues in Times Square
2. Users can browse entertainment through categories or company name
3. Allows users to view all information about the selected company

# Setup

1. The app requires the following ruby gems to be installed. Run gem install [gem name] if your system does not have them
    ```
    - gem 'sinatra-activerecord'
    - gem 'sqlite3'
    - gem 'rake'
    - gem 'rest-client'
    ```

3. Check that the following files are in order  
    - app/models
    - bin/run.rb
    - config/environment.rb
    - db files

4. Terminal will output a greeting when the app is successfully launched
 
# Running the tests

1. Welcome/greet message
2. Select opt1
3. Select opt2
4. Quit opt3
