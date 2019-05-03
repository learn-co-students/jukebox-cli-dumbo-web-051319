require 'pry'

#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => './audio/Emerald-Park/01.mp3',
"LiberTeens" => './audio/Emerald-Park/02.mp3',
"Hamburg" =>  './audio/Emerald-Park/03.mp3',
"Guiding Light" => './audio/Emerald-Park/04.mp3',
"Wolf" => './audio/Emerald-Park/05.mp3',
"Blue" => './audio/Emerald-Park/06.mp3',
"Graduation Failed" => './audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def list(my_songs)
  my_songs.each_with_index do |(k, v), i|
    puts "#{i + 1}. #{k}"
  end
end

def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  if my_songs.include? song_choice
    puts "Playing #{song_choice}"
    puts "#{my_songs[song_choice]}"
    system "xdg-open #{my_songs[song_choice]}"
  else
    puts "Invalid input, please try again."
  end
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  response = ""
  until response == "exit"
    puts "Please enter a command:"
    response = gets.chomp
    if response == "help"
      help
    elsif response == "list"
      list(my_songs)
    elsif response == "play"
      play(my_songs)
    end
  end

  exit_jukebox
end