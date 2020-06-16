require 'pry'

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


def play(songs)
    puts "Please enter a song name or number:"
    input = gets.strip
    default = "Invalid input, please try again"
    songs.each_with_index do |song, i|
        if input == song || input.to_i == i+1
            default = "Playing " + song
        end
    end
   puts default
end


def list(songs)
    songs.each_with_index do |song, i|
        puts (i + 1).to_s + ". " + song
    end
end


def exit_jukebox
        puts "Goodbye"
end



def run(songs)
    puts "Please enter a command:"
    input = gets.strip

    if input == "play"
        play(songs)
    elsif input == "exit"
        exit_jukebox
    elsif input == "list"
        list(songs)
    elsif input == "help"
        help
    else
        run
    end

end

# binding.pry