1/22/2016

-Analyze Documentation from the API at Wine.com
-Instantiate a new rails app with three database columns, :name :quantity :price
 a. The "name" column in the database will be populated by the "name" key from the JSON API 
-Generate models and controllers with the ability to show, edit, update, and destroy records
-Created a new rake task called scraper, which generated a 'scraper.rb' file in the lib/tasks folder of the rails app
-Wrote a ruby script to pull the names of the wines from the API & save the names into the database.
-Integrated the ruby script into scraper.rb
-Ran "rake scraper:scrape" in the terminal
-Ran "rails s" in the terminal
-The app succeessfully pulled and saved the names of the wines into the local database on the rails app with the ability to perform CRUD