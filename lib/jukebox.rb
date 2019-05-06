songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight",
]

#####################################################################

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
  "
end

# help

######################################################################

def list(songs)
  for i in (0..(songs.length - 1))
    puts "#{i + 1}. #{songs[i]}"
  end
end

# list(songs)

######################################################################

def play(songs)
  puts "Please enter a song name or number:"
  reply = gets.chomp

  def stringMethod(songs, reply)
    songs.each { |song|
      if reply == song
        puts "Playing #{song}"
        return
      end
    }
    puts "Invalid input, please try again"
    return
  end

  def numberMethod(songs, reply)
    reply = reply.to_i
    valid_number = (1..songs.length).to_a.include?(reply)

    if valid_number
      chosen_song = songs[(1..songs.length).to_a.index(reply)]
      puts "Playing #{chosen_song}"
    else
      puts "Invalid input, please try again"
    end
  end

  test = Integer(reply) rescue nil

  if (test.class == Integer)
    numberMethod(songs, reply)
  else
    stringMethod(songs, reply)
  end
end

# play(songs)

######################################################################

def exit_jukebox
  puts "Goodbye"
end

# exit_jukebox

######################################################################

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.strip

  def cases(response, songs)
    case response
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      return
    else
      puts "Invalid Command"
    end
  end

  cases(response, songs)

  until response == "exit"
    puts "Please enter a command:"
    response = gets.strip
    cases(response, songs)
  end
end

# run(songs)
