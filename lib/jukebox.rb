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
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, number| 
    # binding.pry
    puts "#{number + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  songs.each_with_index do |song, number|
    number = number + 1
     if answer == song  
       puts "Playing #{song}"
     elsif answer.to_i == number
      puts "Playing #{song}"
     else
      puts "Invalid input, please try again"
     end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  answer = gets.chomp
  if answer == "list"
    list(songs)
  elsif answer == "play"
    play(songs)
  elsif answer == "help"
    help
  elsif answer == "exit"
    exit
  end
  

end