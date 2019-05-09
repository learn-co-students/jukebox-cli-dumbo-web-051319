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
  puts  "I accept the following commands: \n
  - help : displays this help message \n
  - list : displays a list of songs you can play \n
  - play : lets you choose a song to play \n
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  tune = gets.chomp
  if (1..9).to_a.include?(tune.to_i)
      puts "Playing #{songs[tune.to_i - 1]}"
    #  element.is_a? Numeric
  elsif songs.include?(tune)
    puts "Playing #{tune}"
  else
    puts "Invalid input, please try again"
  end
end
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end 
end
