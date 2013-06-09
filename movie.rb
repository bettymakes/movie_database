#Test hash of movie titles and ratings
movies = {
	movieName1: 3,
	movieName2: 2,
	movieName3: 4
}

puts "Yo Coose something!"
choice = gets.chomp.downcase

case choice
	when "add"
	puts "What movie you wanna add?"
	title = gets.chomp
	puts "Rate it!"
	rating = gets.chomp
	
		if movies[title.to_sym].nil?
			movies[title.to_sym] = rating.to_i
			puts "It's been added yo"
		else
			puts "This already exists son!"
		end
	
	when "update"
	puts "Whatchu wanna update?"
	update_title = gets.chomp
		if movies[update_title.to_sym].nil?
			puts "that don't exist yo!"
		else
			puts "Rate it now!"
			rating = gets.chomp
			movies[update_title] = rating
		end    
	
	when "display"
	movies.each do |movie_name, movie_rate|
		puts "#{movie_name}: #{movie_rate}"
	end
	
	when "delete"
		puts "Whatchu gonne erase?"
		movie_delete = gets.chomp
			if movies[movie_delete.to_sym].nil?
				puts "bitch that aint real"
			else
				movies.delete(movie_delete.to_sym)
				puts "#{movie_delete} has been wiped"
			end
	else
	puts "Error!"
end
