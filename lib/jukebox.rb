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

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number"
  user_song = gets.chomp
  juke_answer = ""
  songs.each_with_index do |song, index|
    if user_song == (index + 1).to_s || user_song == song
      juke_answer = "Playing #{song}"
    end
  end
    if juke_answer.include?("Playing")
      puts juke_answer
    else
      puts "Invalid input, try again"
      play(songs)
    end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = " "

  while input != 'exit'
    puts "Please enter a command:"
    input = gets.strip       
    case input
    when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'exit'
      exit_jukebox
    else
      puts "Invalid input."
    end
  end
end
