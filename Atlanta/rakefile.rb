require "rake"

task default: %w[cityData]

task :cityData do 
	Dir.glob("**/*.rake").each { |file| load(file) }
end
