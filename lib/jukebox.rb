songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index{|song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play(songs_array)
  puts "Please enter a song name or number:"
  input = gets.strip
  largest_array_index = (songs_array.length - 1)
  if songs_array.include?(input)
    puts "Playing #{input}"      
  elsif (1..largest_array_index).include?(input.to_i)
    puts "Playing #{songs_array[(input.to_i) - 1]}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs_array)
  command_input = ""
  until command_input == "exit"
  puts "Please enter a command:"
  command_input = gets.strip
    if command_input == "help"
      help
    elsif command_input == "list"
      list(songs_array)
    elsif command_input == "play"
      play(songs_array)
    #the below worked too as opposed to calling exit jukebox outside of the loop
    #elsif command_input == "exit"
     # exit_jukebox
    end
  end
  exit_jukebox
end




