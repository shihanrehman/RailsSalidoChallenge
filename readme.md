1/22/2016 - Steps 1-4
-Analyze Documentation from the API at Wine.com
-Instantiate a new rails app with three database columns, :name :quantity :price
-The "name" column in the database will be populated by the "name" key from the JSON WINE API, aka the names of the wines 
-Generate models and controllers with the ability to show, edit, update, and destroy records
-Created a new rake task called scraper, which generated a 'scraper.rb' file in the lib/tasks folder of the rails app
-Wrote a ruby script to pull the names of the wines from the API & save the names into the database.
-Integrated the ruby script into scraper.rb
-Ran "rake scraper:scrape" in the terminal
-Ran "rails s" in the terminal
-The app succeessfully pulled and saved the names of the wines into the local database on the rails app with the ability to perform CRUD

1/23-1/24

-Configured production environment with Postgres DB and Deployed App to heroku

2/27/2016 - Step 5
-Built a custom API and the user has the ability to update existing products in Salido'S DB using the API via the curl command in terminal.

2/28/2016 - Step 6
-In Progress (Developing Rspec script to test API calls)
-Steps 1-5 complete of Rails Salido Challenge
