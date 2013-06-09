=begin
	BUGS FOUND!
	1) FIXED!! when adding a movie with the same title, no error shows up. 
	   also, the new input is not added to the hash
			- Technically, it was working. However, my flow was the issue.
			- I put "enter movie name" and put "enter rating" before checking if movie existed
			- The error did show up after saying "this already exists", 
			- but because the UI is so messy, I didn't notice the "already exists" message
			- Revised the code so that you will only be prompted to rate the movie,
			- if the movie doesn't already exit. Else, you'll get the error right away

	2) FIXED!! when updating a movie, the original movie is not updated,
	   instead, it just creates an additional entry for the movie.
	     - I didn't convert the user's movie name input into a symbol
	     - I also didn't convert their ratings value into an Integer
	     - This has been revised, bug fixed

	Items to improve:
	1) Fix the UI so that it's easier to read for the user
		 Needs a better separation between the prompt, the returned values, and the user input

=end




#Test hash of movie titles and ratings
movies = {
	movieName1: 3,
	movieName2: 2,
	movieName3: 4
}

loop do
#Greet user, and prompt them to choose an option
  puts "Greetings Earthling!"
  puts "Welcome to Film Reviews R Us"
  puts
  puts "Choose one of the following options:"
  puts "Type 'add' to add a movie to the database"
  puts "Type 'update' to update a rating on an existing movie"
  puts "Type 'display' to display all the movies and their corresponding ratings in the database"
  puts "Type 'delete' to remove a movie from the database"
  puts "Type 'exit' to leave Film Reivews R Us"
  puts 
  puts "-----------------------------------------------------------------------"
  puts
  puts "Input below: "
  choice = gets.chomp.downcase
  puts 
  puts"-----------------------------------------------------------------------"
  puts

  case choice
	  when "add"
	  puts "What movie you wanna add?"
  	title = gets.chomp
	
		  if movies[title.to_sym].nil?
		  	puts "Rate it!"
	  		rating = gets.chomp
			  movies[title.to_sym] = rating.to_i
			  puts "It's been added yo!"
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
  			movies[update_title.to_sym] = rating.to_i
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

		when "exit"
			puts "Thanks for dropping by! See ya later."
			puts
			puts
			break

	  else
	  puts "Error!"
  end

end