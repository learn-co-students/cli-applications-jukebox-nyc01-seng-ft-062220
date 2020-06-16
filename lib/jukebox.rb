def help 
  puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index+1}. #{item}"
end
end

def play(songs)
  message="Invalid input, please try again"
  puts "Please enter a song name or number:"
  input= gets.strip
  songs.each_with_index do |item, index|
    if item == input || index+1 == input.to_i
    message = "Playing #{item}"
end
end 
puts message
end

def exit_jukebox
  puts "Goodbye"
end

 def run(songs)
puts "Please enter a command:"  
input=gets.strip

if input == "exit"
  exit_jukebox
   elsif input == "play" 
   play(songs)
   run(songs)
  elsif input == "list"
 list(songs)
 run(songs)
  elsif input == "help"
  help
  run(songs)
end
end

