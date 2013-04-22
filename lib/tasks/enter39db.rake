require 'open-uri'

namespace :hw4 do
	desc "this will insert the data into the db"
	task :enter_into_database => :environment do
		open("https://raw.github.com/ColumbiaRails/courszilla/master/courses.csv") do |courses|

			courses.read.each_line do |course|
				course.gsub! /"/, ''

				callNumber, courseTitle, startTime1, endTime1, meetsOn1, building1, room1, instructorLast, instructorFirst = course.chomp.split(",")

				Course.new(:callNumber => callNumber, :courseTitle => courseTitle, :startTime1 => startTime1, :endTime1 => endTime1, :meetsOn1 => meetsOn1, :building1 => building1, :room1 => room1, :instructor1Name => instructorLast)
				puts "course: " + courseTitle + " added."
			end
		end
	end
end
