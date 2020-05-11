# Help from Tanuka Das

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
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end

def list(my_songs)
  i=1
  my_songs.each_with_index do |song|
    puts "#{i}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name or number"
  input = gets.chomp
  my_songs.each_with_index do |song, index|
    if input.to_i == (index+1) || input == song
      puts "Playing #{song}"
      break
    else
      puts "Invalid input, please try again"
      break
    end

   end
end


def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  input = " "

  while input != 'exit'
    puts "Please enter a command:"
    input = gets.strip       
    case input
    when 'help'
      help
    when 'list'
      list(my_songs)
    when 'play'
      play(my_songs)
    when 'exit'
      exit_jukebox
    else
      puts "Invalid input."
    end
  end

#exit_jukebox
end