require "rake"

task default: %w[getData]

task :getData do 
	Rake::FileList.new("Atlanta/rakefile.rb").each do |scraper_script|
		dir = File.dirname(__FILE__)
		city = File.basename(dir)
		csv_file = File.join(dir, "resultsFor#{city}.csv")
		ruby [scraper_script, csv_file].join(" ")
		## This returns everything but the filename or last parameter
		## passed in, so in this case it would give me Atlanta
		## This returns the last componet of the filename and in this 
		## case it will be the city 
	## Calling join on file right here basically turns this into a path


end 
end




