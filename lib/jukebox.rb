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
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  i=1
  my_songs.each_with_index do |song|
    puts "#{i}. #{song}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
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
#play(my_songs)

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  input = " "

  while input != 'exit'
    puts "Please enter a command:"
    input = gets.strip                      #the #strip method removes whitespace (leading and trailing) and new lines.
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
