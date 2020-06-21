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
  #output instructions for user on how to use the jukebox
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def play(songs)
  #ask user to input song name or track number. output appropriate track
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  #check if user_input can be a valid integer from default string value 
    if user_input.to_i != 0 #any valid string will equal 0, thus if it equals 0, assume string.
      if songs[user_input.to_i - 1]
        puts "Playing #{songs[user_input.to_i - 1]}"
      else
        puts "Invalid input, please try again"
      end
    else
      if songs.include?(user_input)
        puts "Playing #{user_input}"
      else
        puts "Invalid input, please try again"
      end
    end
end

def list(songs)
  #output list of songs 
  songs.each_with_index do |song, index|
      puts "#{index + 1}. #{song}" 
  end
end

def exit_jukebox
  #output 'goodbye' & shut down program
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  while user_input = gets.strip
    case user_input
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "list"  
      list(songs)
    when "help"
      help
    else 
      puts "invalid entry. Please enter a command:"
    end
  end
end
