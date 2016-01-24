require 'rubygems'
require 'json'

namespace :scraper do
  desc "Fetch Wines from the wine API"
  task scrape: :environment do
	require 'open-uri'
	require 'json'

	#http://services.wine.com/api/beta2/service.svc/JSON/catalog?filter=product&apikey=b83910c31344dbe67a1b501d8ccd5bf7
	# Set API token and URL
	apikey = "b83910c31344dbe67a1b501d8ccd5bf7"
	polling_url = "http://services.wine.com/api/beta2/service.svc/JSON/catalog?filter=product&"

	#Specify request parameters

	params = {
		apikey: apikey
	}

	#Prepare API request
	uri = URI.parse(polling_url)
	uri.query = URI.encode_www_form(params)

	#Submit request

	result = JSON.parse(open(uri).read)

	# Display results to screen
	puts result["Products"]["List"].first["Name"]

	#Store results in database
	result["Products"]["List"].each do |posting|
		#Create new post
		@post = Post.new
		@post.name = posting["Name"]
		@post.save
	end
  end

  desc "TODO"
  task destroy_all_posts: :environment do
  end

end
