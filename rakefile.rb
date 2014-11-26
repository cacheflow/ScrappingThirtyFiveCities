require "rake"


task default: %w["cityData"]

task :cityData do 
	files = Rake::FileList.new("**/*.rb").each do |file| 
ruby file
end 
end 